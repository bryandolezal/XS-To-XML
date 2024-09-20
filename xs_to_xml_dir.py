import sys
import os
import html
import re

# Function to convert special characters, skipping lines already escaped
def escape_special_chars(line):
    return html.escape(line, quote=False)

# Function to wrap each line in <command></command> tags
def wrap_with_command_tag(line):
    return f"      <command>{line}</command>"

# Function to load boilerplate from a file
def load_boilerplate(base_dir, file_name):
    file_path = os.path.join(base_dir, file_name)
    print(f"Looking for boilerplate file: {file_path}")  # Debugging line to print file path
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            return file.readlines()
    return None

# Function to remove comments (both single-line // and multi-line /* */)
def remove_comments(lines):
    cleaned_lines = []
    in_multiline_comment = False

    for line in lines:
        # Remove multi-line comments
        if "/*" in line:
            in_multiline_comment = True
            line = re.sub(r'/\*.*?\*/', '', line)  # Remove inline multi-line comment
        if in_multiline_comment:
            if "*/" in line:
                in_multiline_comment = False
                line = re.sub(r'.*?\*/', '', line)  # Remove ending part of multi-line comment
            else:
                continue  # Skip lines inside a multi-line comment block

        # Remove single-line comments
        line = re.sub(r'//.*', '', line)

        # Add only non-empty lines after stripping comments
        if line.strip():
            cleaned_lines.append(line.strip())

    return cleaned_lines

# Function to move standalone brackets to the previous line
def merge_brackets_to_previous(lines):
    merged_lines = []
    for i in range(len(lines)):
        line = lines[i].strip()

        # If the line is an opening or closing bracket, merge it with the previous line
        if line == '{' or line == '}':
            if merged_lines:  # Check if there's a previous line to merge with
                merged_lines[-1] = merged_lines[-1].rstrip() + f" {line}"
        else:
            merged_lines.append(line)
    
    return merged_lines

# Main function to convert XS to XML for all files in a directory recursively
def convert_xs_files_in_directory(directory):
    for subdir, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.xs'):
                input_file = os.path.join(subdir, file)
                output_file = os.path.splitext(input_file)[0] + ".xml"
                convert_xs_to_xml(input_file, output_file)

# Main function to convert XS to XML, with removal of empty lines, comments, and adding boilerplate
def convert_xs_to_xml(input_file, output_file):
    file_name_without_ext = os.path.splitext(os.path.basename(input_file))[0]
    base_dir = os.path.dirname(input_file)  # Get the directory of the input file

    # Load custom boilerplate files if they exist in the same directory as the input file
    start_boilerplate = load_boilerplate(base_dir, f'{file_name_without_ext}_start.xml')
    end_boilerplate = load_boilerplate(base_dir, f'{file_name_without_ext}_end.xml') 

    with open(input_file, 'r') as xs_file, open(output_file, 'w') as xml_file:
        if start_boilerplate:
            xml_file.writelines(start_boilerplate)
        else:
            # Default start boilerplate
            xml_file.write(f'    <effect name="Script: {file_name_without_ext}">\n')
            xml_file.write(f'      <command>xsDisableRule("_{file_name_without_ext}");</command>\n')
            xml_file.write(f'      <command>trDisableRule("{file_name_without_ext}");</command>\n')
            xml_file.write('      <command>}</command>\n')
        
        # Process lines
        lines = xs_file.readlines()

        # Remove comments
        lines = remove_comments(lines)

        # Merge brackets onto the previous line
        merged_lines = merge_brackets_to_previous(lines)

        # Convert to XML format
        for line in merged_lines:
            escaped_line = escape_special_chars(line)
            xml_line = wrap_with_command_tag(escaped_line)
            xml_file.write(xml_line + "\n")

        # Write the end boilerplate
        if end_boilerplate:
            xml_file.writelines(end_boilerplate)
        else:
            # Default end boilerplate
            xml_file.write(f'      <command>rule _{file_name_without_ext}_end</command>\n')
            xml_file.write('      <command>highFrequency</command>\n')
            xml_file.write('      <command>active</command>\n')
            xml_file.write('      <command>runImmediately</command>\n')
            xml_file.write('      <command>{</command>\n')
            xml_file.write(f'      <command>xsDisableRule("_{file_name_without_ext}_end");</command>\n')
            xml_file.write(f'      <command>trDisableRule("{file_name_without_ext}_end");</command>\n')
            xml_file.write('    </effect>\n')

    print(f"Converted {input_file} to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python xs_to_xml.py <input_file_or_directory>")
        sys.exit(1)

    input_path = sys.argv[1]

    # Check if input is a file or a directory
    if os.path.isfile(input_path):
        output_file = os.path.splitext(input_path)[0] + ".xml"
        convert_xs_to_xml(input_path, output_file)
    elif os.path.isdir(input_path):
        convert_xs_files_in_directory(input_path)
    else:
        print(f"Invalid input: {input_path} is not a file or directory")