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

def merge_elements(source_root, target_root, element_name):
    # Find or create the element in the target XML
    target_element = target_root.find(element_name)
    if target_element is None:
        print(f"<{element_name}> tag not found in target XML. Creating a new <{element_name}> tag.")
        target_element = ET.SubElement(target_root, element_name)

    # Find the element in the source XML
    source_element = source_root.find(element_name)
    if source_element is None:
        print(f"Error: <{element_name}> tag not found in source XML.")
        return False

    # Merge elements from source XML into target XML
    for sub_element in source_element.findall('*'):
        sub_element_name = sub_element.get('name')
        existing_sub_element = target_element.find(f"*[@name='{sub_element_name}']")
        
        if existing_sub_element is not None:
            # Replace the existing element
            target_element.remove(existing_sub_element)
            print(f"{element_name.capitalize()} '{sub_element_name}' replaced in target XML.")
        else:
            print(f"{element_name.capitalize()} '{sub_element_name}' added to target XML.")
        
        # Append new or updated element to the target
        target_element.append(sub_element)

    return True

def merge_xml(source_xml, target_xml):
    # Parse the XML files
    source_tree = ET.parse(source_xml)
    source_root = source_tree.getroot()

    target_tree = ET.parse(target_xml)
    target_root = target_tree.getroot()

    # Merge <effects> elements
    if not merge_elements(source_root, target_root, 'effects'):
        print(f"Skipping merging effects for {source_xml}")

    # Merge <conditions> elements
    if not merge_elements(source_root, target_root, 'conditions'):
        print(f"Skipping merging conditions for {source_xml}")

    # Write the updated target XML
    target_tree.write(target_xml)
    return True

def process_xml_files(input_path, trigger_data_file):
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
                    print(f"Merging {file_path} into {trigger_data_file}")
                    merge_xml(file_path, trigger_data_file)
    elif os.path.isfile(input_path) and input_path.endswith(".xml"):
        # Process a single XML file
        print(f"Merging {input_path} into {trigger_data_file}")
        merge_xml(input_path, trigger_data_file)
    else:
        print("Error: Invalid input path. Please provide a valid XML file or directory.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python merge_trigger_data.py <trigger_data.xml> <input_xml_or_folder>")
        sys.exit(1)

    input_path = sys.argv[1]  # Path to the XML file or directory

    process_xml_files(input_path, trigger_data_file)
