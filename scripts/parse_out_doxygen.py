import json
from bs4 import BeautifulSoup
import os
import sys

# Ensure workspace directory is passed as an argument
if len(sys.argv) < 2:
    print("Usage: python parse_out_doxygen.py <workspace_directory>")
    sys.exit(1)

workspace_dir = sys.argv[1]

# Load configuration from config.json
config_path = os.path.join(workspace_dir, 'scripts', 'config.json')
if not os.path.exists(config_path):
    print(f"Error: config.json not found at {config_path}")
    sys.exit(1)

with open(config_path, 'r') as config_file:
    config = json.load(config_file)

# Resolve paths relative to the workspace directory
def resolve_path(path):
    if not os.path.isabs(path):
        return os.path.normpath(os.path.join(workspace_dir, path))
    return path

# Get paths from config.json
html_directory = resolve_path(config['doxygen_html_paths']['html_src'])
output_file_base = resolve_path(config['doxygen_html_paths']['output_file'])

# Function to extract function signatures and descriptions from HTML content
def extract_functions_from_html(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        soup = BeautifulSoup(file, 'html.parser')
        functions_dict = {}

        # Find all table rows containing the function data
        rows = soup.find_all('tr', class_=lambda x: x and 'memitem' in x)
        descRows = soup.find_all('tr', class_=lambda x: x and 'memdesc' in x)

        # Ensure we don't exceed the number of description rows
        for i in range(min(len(rows), len(descRows))):
            row = rows[i]
            descRow = descRows[i]

            # Extract return type and function signature
            return_type_td = row.find('td', class_='memItemLeft')
            function_td = row.find('td', class_='memItemRight')
            desc_td = descRow.find('td', class_='mdescRight')

            if return_type_td and function_td:
                return_type = return_type_td.get_text().strip()
                function_signature = function_td.get_text().strip()

                # Try to extract the function name and parameters from <a> or <b> tags
                function_name = None
                function_link = function_td.find('a')
                if function_link:
                    function_name = function_link.get_text().strip()
                else:
                    function_bold = function_td.find('b')
                    if function_bold:
                        function_name = function_bold.get_text().strip()

                if function_name:
                    parameters_start = function_signature.index('(')
                    parameters_end = function_signature.index(')')
                    parameters = function_signature[parameters_start + 1:parameters_end]

                    # Split parameters and types
                    param_list = []
                    js_params = []
                    cpp_params = []
                    if parameters.strip():
                        for param in parameters.split(','):
                            param_name_type = param.strip().split(' ')
                            if len(param_name_type) == 2:
                                param_type, param_name = param_name_type
                                param_list.append({
                                    "name": param_name.strip(),
                                    "type": param_type.strip(),
                                    "required": True,
                                    "desc": ""  # Placeholder; can be improved
                                })
                                js_params.append(f"{param_name.strip()}: {param_type.strip()}")
                                cpp_params.append(f"{param_type.strip()} {param_name.strip()}")

                    # Try to extract the description from the next row (memdesc)
                    description = "No description available."
                    if desc_td:
                        description = desc_td.get_text().replace("More...", "").strip()

                    # Add function to the dictionary
                    functions_dict[function_name] = {
                        "name": function_name,
                        "return_type": return_type,
                        "params": param_list,
                        "desc": description,
                        "js_params": ", ".join(js_params),
                        "cpp_params": ", ".join(cpp_params)
                    }
    
    return functions_dict

# Function to process all HTML files in a directory
def process_directory(directory_path):
    all_functions = {}
    
    for filename in os.listdir(directory_path):
        if filename.endswith(".html"):
            file_path = os.path.join(directory_path, filename)
            print(f"Processing file: {file_path}")
            functions = extract_functions_from_html(file_path)
            all_functions.update(functions)
    
    return all_functions

# Function to save the extracted functions to JSON, JavaScript, and C++ files
def save_functions_to_files(functions, output_file_base):
    # Save JSON
    json_file = output_file_base + ".json"
    with open(json_file, 'w', encoding='utf-8') as file:
        json.dump(functions, file, indent=4)
    print(f"Extracted {len(functions)} functions and saved to {json_file}.")

    # Save JavaScript
    js_file = output_file_base + ".js"
    with open(js_file, 'w', encoding='utf-8') as file:
        for function in functions.values():
            js_function = f"""
/**
 * {function['desc']}
 * @param {{{function['js_params']}}}
 * @returns {{{function['return_type']}}}
 */
function {function['name']}({function['js_params']}) {{
    // Stub
}}
"""
            file.write(js_function)
    print(f"JavaScript stubs saved to {js_file}.")

    # Save C++
    cpp_file = output_file_base + ".xs"
    with open(cpp_file, 'w', encoding='utf-8') as file:
        for function in functions.values():
            cpp_function = f"""
/**
 * {function['desc']}
 * @param {function['cpp_params']}
 * @returns {function['return_type']}
 */
{function['return_type']} {function['name']}({function['cpp_params']});
"""
            file.write(cpp_function)
    print(f"C++ stubs saved to {cpp_file}.")

# Main function
def main():
    if not os.path.exists(html_directory):
        print(f"Error: HTML source directory not found: {html_directory}")
        sys.exit(1)

    output_dir = os.path.dirname(output_file_base)
    if not os.path.exists(output_dir):
        try:
            os.makedirs(output_dir, exist_ok=True)
            print(f"Created directory: {output_dir}")
        except Exception as e:
            print(f"Error: Could not create output directory {output_dir}. {e}")
            sys.exit(1)

    # Extract functions and save to files
    functions = process_directory(html_directory)
    save_functions_to_files(functions, output_file_base)

if __name__ == "__main__":
    main()
