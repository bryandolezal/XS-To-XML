import sys
import os
import shutil
import xml.etree.ElementTree as ET
from datetime import datetime

def backup_trigger_data_file(trigger_data_file):
    backup_file = f"{trigger_data_file}.{datetime.now().strftime('%Y%m%d%H%M%S')}.backup"
    shutil.copy(trigger_data_file, backup_file)
    print(f"Backup created at: {backup_file}")

def remove_effects(source_xml, target_xml):
    # Parse the XML files
    source_tree = ET.parse(source_xml)
    source_root = source_tree.getroot()

    target_tree = ET.parse(target_xml)
    target_root = target_tree.getroot()

    # Find <effects> in target XML
    target_effects = target_root.find('effects')
    if target_effects is None:
        print(f"<effects> tag not found in {target_xml}.")
        return False

    # Find <effects> in source XML
    source_effects = source_root.find('effects')
    if source_effects is None:
        print(f"Error: <effects> tag not found in source XML: {source_xml}")
        return False

    # Remove matching effects from the target XML
    removed_any = False
    for effect in source_effects.findall('effect'):
        effect_name = effect.get('name')
        existing_effect = target_effects.find(f"effect[@name='{effect_name}']")

        if existing_effect is not None:
            # Remove the existing effect
            target_effects.remove(existing_effect)
            print(f"Effect '{effect_name}' removed from target XML.")
            removed_any = True
        else:
            print(f"Effect '{effect_name}' not found in target XML.")

    if removed_any:
        # Write the updated target XML if any effects were removed
        try:
            target_tree.write(target_xml, encoding='utf-8', xml_declaration=True)
        except Exception as e:
            print(f"Error writing to file: {e}")
            return False
        return True
    else:
        print(f"No effects were removed from {target_xml}.")
        return False

def process_removal_files(input_path, trigger_data_file):
    # Backup the original trigger_data.xml file
    backup_trigger_data_file(trigger_data_file)

    # Determine if input_path is a file or directory
    if os.path.isdir(input_path):
        # Process all XML files in the directory
        for root, _, files in os.walk(input_path):
            for file in files:
                if file.endswith(".xml"):
                    file_path = os.path.join(root, file)
                    print(f"Removing effects from {file_path} in {trigger_data_file}")
                    remove_effects(file_path, trigger_data_file)
    elif os.path.isfile(input_path) and input_path.endswith(".xml"):
        # Process a single XML file
        print(f"Removing effects from {input_path} in {trigger_data_file}")
        remove_effects(input_path, trigger_data_file)
    else:
        print("Error: Invalid input path. Please provide a valid XML file or directory.")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python remove_trigger_data.py <input_xml_or_folder> <trigger_data.xml>")
        sys.exit(1)

    input_path = sys.argv[2]  # Path to the XML file or directory
    trigger_data_file = sys.argv[1]  # Path to trigger_data.xml

    process_removal_files(input_path, trigger_data_file)
