import sys
import os
import html
import re
import json

# Load the configuration file for directory paths
with open(os.path.join(os.path.dirname(__file__), 'config.json')) as config_file:
    config = json.load(config_file)

# Get directories from config
xs_dir = os.path.abspath(config['converter_paths']['xs_dir'])  # Ensure it's an absolute path
xml_dir = os.path.abspath(config['converter_paths']['xml_dir'])  # Ensure it's an absolute path

# Function to convert special characters, skipping lines already escaped
def escape_special_chars(line):
    return html.escape(line, quote=False)

# Function to replace modular operator % with %Mod%
def replace_mod_operator(line):
    return line.replace('%', '%Mod%')

# Function to wrap each line in <command></command> tags
def wrap_with_command_tag(line):
    return f"      <command>{line}</command>"

# Function to break up long lines at spaces
def break_up_long_line(line, max_length=149):
    if len(line) <= max_length:
        return [line]
    
    words = line.split(' ')
    lines = []
    current_line = words[0]

    for word in words[1:]:
        if len(current_line) + 1 + len(word) > max_length:
            lines.append(current_line)
            current_line = word
        else:
            current_line += ' ' + word

    lines.append(current_line)
    return lines

# Function to load boilerplate from a file
def load_boilerplate(base_dir, file_name):
    file_path = os.path.join(base_dir, file_name)
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            return file.readlines()
    return None

# Function to remove comments (both single-line // and multi-line /* */)
def remove_comments(lines):
    cleaned_lines = []
    in_multiline_comment = False

    for line in lines:
        if "/*" in line:
            in_multiline_comment = True
            line = re.sub(r'/\*.*?\*/', '', line)
        if in_multiline_comment:
            if "*/" in line:
                in_multiline_comment = False
                line = re.sub(r'.*?\*/', '', line)
            else:
                continue

        line = re.sub(r'//.*', '', line)
        if line.strip():
            cleaned_lines.append(line.strip())

    return cleaned_lines

# Function to move standalone brackets to the previous line
def merge_brackets_to_previous(lines):
    merged_lines = []
    for i in range(len(lines)):
        line = lines[i].strip()
        if line == '{' or line == '}':
            if merged_lines:
                merged_lines[-1] = merged_lines[-1].rstrip() + f" {line}"
        else:
            merged_lines.append(line)
    
    return merged_lines

# Function to create output directory structure based on input file location
def create_output_path(input_file, xs_base_dir, xml_base_dir):
    # Get the relative path of the input file within the xs folder
    relative_path = os.path.relpath(input_file, xs_base_dir)
    
    # Replace xs directory with xml directory
    output_file = os.path.join(xml_base_dir, os.path.splitext(relative_path)[0] + ".xml")
    
    # Ensure the output directory exists
    output_dir = os.path.dirname(output_file)
    os.makedirs(output_dir, exist_ok=True)

    print(f"Relative path: {relative_path}")
    print(f"Output file: {output_file}")
    print(f"Output dir: {output_dir}")

    return output_file

# Main function to convert XS to XML for all files in a directory recursively
def convert_xs_files_in_directory(directory):
    for subdir, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.xs'):
                input_file = os.path.join(subdir, file)
                output_file = create_output_path(input_file, xs_dir, xml_dir)
                convert_xs_to_xml(input_file, output_file)

# Main function to convert XS to XML, with removal of empty lines, comments, and adding boilerplate
def convert_xs_to_xml(input_file, output_file):
    file_name_without_ext = os.path.splitext(os.path.basename(input_file))[0]
    base_dir = os.path.dirname(input_file)

    start_boilerplate = load_boilerplate(base_dir, f'{file_name_without_ext}_start.boiler')
    end_boilerplate = load_boilerplate(base_dir, f'{file_name_without_ext}_end.boiler') 

    with open(input_file, 'r') as xs_file, open(output_file, 'w') as xml_file:

        xml_file.write(f'<?xml version="1.0" encoding="utf-8"?>\n')
        xml_file.write(f'<trigger version="2">\n')
        xml_file.write(f'  <conditions>\n')
        xml_file.write(f'  </conditions>\n')
        xml_file.write(f'  <effects>\n')

        if start_boilerplate:
            xml_file.writelines(start_boilerplate)
        else:
            xml_file.write(f'    <effect name="Script: {file_name_without_ext}">\n')
            xml_file.write(f'      <param name="Mod" dispname="Mod" vartype="hidden">%%</param>\n')
            xml_file.write(f'      <command>xsDisableRule("_{file_name_without_ext}");</command>\n')
            xml_file.write(f'      <command>trDisableRule("{file_name_without_ext}");</command>\n')
            xml_file.write('      <command>}</command>\n')
        
        lines = xs_file.readlines()
        lines = remove_comments(lines)
        merged_lines = merge_brackets_to_previous(lines)

        for line in merged_lines:
            escaped_line = escape_special_chars(line)
            mod_replaced_line = replace_mod_operator(escaped_line)
            split_lines = break_up_long_line(mod_replaced_line)

            for split_line in split_lines:
                xml_line = wrap_with_command_tag(split_line)
                xml_file.write(xml_line + "\n")

        if end_boilerplate:
            xml_file.writelines(end_boilerplate)
        else:
            xml_file.write(f'      <command>rule _{file_name_without_ext}_end</command>\n')
            xml_file.write('      <command>highFrequency</command>\n')
            xml_file.write('      <command>active</command>\n')
            xml_file.write('      <command>runImmediately</command>\n')
            xml_file.write('      <command>{</command>\n')
            xml_file.write(f'      <command>xsDisableRule("_{file_name_without_ext}_end");</command>\n')
            xml_file.write(f'      <command>trDisableRule("{file_name_without_ext}_end");</command>\n')
            xml_file.write('    </effect>\n')

        xml_file.write(f'  </effects>\n')
        xml_file.write(f'</trigger>\n')

    print(f"Converted {input_file} to {output_file}")

if __name__ == "__main__":

    if len(sys.argv) < 2:
        print("Usage: python xs_to_xml.py <input_file_or_directory>")
        sys.exit(1)

    input_path = sys.argv[1]

    if os.path.isfile(input_path):
        output_file = create_output_path(input_path, xs_dir, xml_dir)
        convert_xs_to_xml(input_path, output_file)
    elif os.path.isdir(input_path):
        convert_xs_files_in_directory(input_path)
    else:
        print(f"Invalid input: {input_path} is not a file or directory")
