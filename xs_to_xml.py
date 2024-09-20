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

# Main function to convert XS to XML, with removal of empty lines, comments, and adding boilerplate
def convert_xs_to_xml(input_file, output_file):
    file_name_without_ext = os.path.splitext(os.path.basename(input_file))[0]

    with open(input_file, 'r') as xs_file, open(output_file, 'w') as xml_file:
        # Write the boilerplate at the start
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

        # Write the boilerplate at the end
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
        print("Usage: python xs_to_xml.py <input_file>")
        sys.exit(1)

    input_file = sys.argv[1]  # Input .xs file
    output_file = os.path.splitext(input_file)[0] + ".xml"  # Output .xml file
    convert_xs_to_xml(input_file, output_file)
