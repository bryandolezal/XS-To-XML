import sys
import os
import shutil
import xml.etree.ElementTree as ET
from datetime import datetime

def backup_trigger_data_file(trigger_data_file):
    backup_file = f"{trigger_data_file}.{datetime.now().strftime('%Y%m%d%H%M%S')}.backup"
    shutil.copy(trigger_data_file, backup_file)
    print(f"Backup created at: {backup_file}")

def merge_effects(source_xml, target_xml):
    # Parse the XML files
    source_tree = ET.parse(source_xml)
    source_root = source_tree.getroot()

    target_tree = ET.parse(target_xml)
    target_root = target_tree.getroot()

    # Find or create <effects> in target XML
    target_effects = target_root.find('effects')
    if target_effects is None:
        print(f"<effects> tag not found in {target_xml}. Creating a new <effects> tag.")
        target_effects = ET.SubElement(target_root, 'effects')

    # Find <effects> in source XML
    source_effects = source_root.find('effects')
    if source_effects is None:
        print(f"Error: <effects> tag not found in source XML: {source_xml}")
        return False

    # Merge effects from source XML into target XML
    for effect in source_effects.findall('effect'):
        effect_name = effect.get('name')
        existing_effect = target_effects.find(f"effect[@name='{effect_name}']")
        
        if existing_effect is not None:
            # Replace the existing effect
            target_effects.remove(existing_effect)
            print(f"Effect '{effect_name}' replaced in target XML.")
        else:
            print(f"Effect '{effect_name}' added to target XML.")
        
        # Append new or updated effect to the target
        target_effects.append(effect)

    # Write the updated target XML
    target_tree.write(target_xml)
    return True

def process_xml_files(input_path, trigger_data_file):
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
                    merge_effects(file_path, trigger_data_file)
    elif os.path.isfile(input_path) and input_path.endswith(".xml"):
        # Process a single XML file
        print(f"Merging {input_path} into {trigger_data_file}")
        merge_effects(input_path, trigger_data_file)
    else:
        print("Error: Invalid input path. Please provide a valid XML file or directory.")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python merge_trigger_data.py <input_xml_or_folder> <trigger_data.xml>")
        sys.exit(1)

    input_path = sys.argv[2]  # Path to the XML file or directory
    trigger_data_file = sys.argv[1]  # Path to trigger_data.xml

    process_xml_files(input_path, trigger_data_file)
