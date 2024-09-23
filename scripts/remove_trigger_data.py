import sys
import os
import shutil
import xml.etree.ElementTree as ET
from datetime import datetime
import json

# Load configuration
with open(os.path.join(os.path.dirname(__file__), 'config.json'), 'r') as config_file:
    config = json.load(config_file)

# Resolve paths based on configuration
def resolve_path(path):
    if not os.path.isabs(path):
        return os.path.abspath(os.path.join(os.path.dirname(__file__), path))
    return path

# Get paths from config.json
trigger_data_file = resolve_path(config['merger_paths']['game_data_trigger_path'])

def backup_trigger_data_file(trigger_data_file):
    backup_file = f"{trigger_data_file}.{datetime.now().strftime('%Y%m%d%H%M%S')}.backup"
    shutil.copy(trigger_data_file, backup_file)
    print(f"Backup created at: {backup_file}")

def remove_elements(source_root, target_root, element_name):
    # Find the element in the source XML
    source_element = source_root.find(element_name)
    if source_element is None:
        print(f"Error: <{element_name}> tag not found in source XML.")
        return False

    # Find or create the element in the target XML
    target_element = target_root.find(element_name)
    if target_element is None:
        print(f"<{element_name}> tag not found in target XML. Skipping.")
        return False

    # Remove matching elements from target XML based on the source
    for sub_element in source_element.findall('*'):
        sub_element_name = sub_element.get('name')
        existing_sub_element = target_element.find(f"*[@name='{sub_element_name}']")
        
        if existing_sub_element is not None:
            # Remove the existing element
            target_element.remove(existing_sub_element)
            print(f"{element_name.capitalize()} '{sub_element_name}' removed from target XML.")
        else:
            print(f"{element_name.capitalize()} '{sub_element_name}' not found in target XML, skipping removal.")

    return True

def remove_xml(source_xml, target_xml):
    # Parse the XML files
    source_tree = ET.parse(source_xml)
    source_root = source_tree.getroot()

    target_tree = ET.parse(target_xml)
    target_root = target_tree.getroot()

    # Remove <effects> elements
    if not remove_elements(source_root, target_root, 'effects'):
        print(f"Skipping removal of effects for {source_xml}")

    # Remove <conditions> elements
    if not remove_elements(source_root, target_root, 'conditions'):
        print(f"Skipping removal of conditions for {source_xml}")

    # Write the updated target XML
    target_tree.write(target_xml)
    return True

def process_removal_files(input_path, trigger_data_file):
    # Check if trigger_data.xml file exists
    if not os.path.exists(trigger_data_file):
        print(f"Error: {trigger_data_file} not found.")
        sys.exit(1)

    # Backup the original trigger_data.xml file
    backup_trigger_data_file(trigger_data_file)

    # Determine if input_path is a file or directory
    if os.path.isdir(input_path):
        # Process all XML files in the directory
        for root, _, files in os.walk(input_path):
            for file in files:
                if file.endswith(".xml"):
                    file_path = os.path.join(root, file)
                    print(f"Removing {file_path} from {trigger_data_file}")
                    remove_xml(file_path, trigger_data_file)
    elif os.path.isfile(input_path) and input_path.endswith(".xml"):
        # Process a single XML file
        print(f"Removing {input_path} from {trigger_data_file}")
        remove_xml(input_path, trigger_data_file)
    else:
        print("Error: Invalid input path. Please provide a valid XML file or directory.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python remove_from_trigger_data.py <trigger_data.xml> <input_xml_or_folder>")
        sys.exit(1)

    input_path = sys.argv[1]  # Path to the XML file or directory

    process_removal_files(input_path, trigger_data_file)
