## Python scripts that help improve the XS coding workflow for Age of Mythology Retold.

Scripts are located under the scripts folder. You can find some notes on their usage below. These were written to work with Microsofts VSCODE. I use Task Runner by Sana Ajani to execute the scripts in the IDE. 

The config.json file is a shared config for all the scripts. 

My VS code workspace is under the AOMR game directory in the user profile under trigger. I do this so that I can easily use the scripts direcly in the scenario editor for development, before converting the scripts to triggers.
This is what my ${workspaceFolder} root directory roughly looks like:
```
trigger\AOMR_WORKSAPCE\.vscode\c_cpp_properties.json
trigger\AOMR_WORKSAPCE\.vscode\tasks.json
trigger\AOMR_WORKSAPCE\.vscode\jsconfig.json
trigger\AOMR_WORKSAPCE\.vscode\xs-snippets.code-snippets

trigger\AOMR_WORKSAPCE\scripts\config.py
trigger\AOMR_WORKSAPCE\scripts\convert_xs_to_xml.py
trigger\AOMR_WORKSAPCE\scripts\merge_trigger_data.py
trigger\AOMR_WORKSAPCE\scripts\remove_trigger_data.py
trigger\AOMR_WORKSAPCE\scripts\parse_out_doxygen.py


trigger\AOMR_WORKSAPCE\references\doxygen_html\xsfuncs_8cpp.html.py
...
trigger\AOMR_Workspace\references\xs\xs_references.xs

trigger\AOMR_WORKSAPCE\xs\settlers_retold\SettlersRetold_start.boiler
trigger\AOMR_WORKSAPCE\xs\settlers_retold\SettlersRetold_end.boiler
trigger\AOMR_WORKSAPCE\xs\settlers_retold\SettlersRetold.xs

trigger\AOMR_WORKSAPCE\xml\settlers_retold\SettlersRetold.xml

trigger\trigtemp.xs
```

You will need to have the python extensions for VS code installed. You will need to install BeautifulSoup for python to get the parse_out_doxygen.py script to work.

## Convert XS To XML

Converts the selected .xs file or directory tree of .xs files to .xml file(s). The .xml files are stripped of comments and compacted to reduce line count in the games trigger_data.xml

Additional usage:
For any .xs file, you can create a <name>_start.boiler or a <name>_end.boiler, if so the boilerplate that's added to the start or end of the file to make it a working trigger will be replaced by the contents of the _start or _end file. This allows you to create custom boilerplate for certain scripts.

## Merge Trigger, Remove Trigger

Takes the selected .xml file or directory tree of .xml files and adds, updates, or removes the .xml conditions and effects from the games trigger_data.xml file. 

The .xml files need to have same the same tags and tree structure as the trigger_data.xml file. The default output from the XS to XML converter adds the correct boilerplate.

This allows you to directly add the .xml files outputed from the converter and add them to the games trigger_data.xml file. 

The first script will add each of the conditions/effects, or update them if they already exist. 

The second script removes the conditions/effects if they already exist.

## Parse out Doxygen

Allows you to take the doxygen .html files from the games source files and parse them into .json .cpp and .js format/stubs. Used along side the AoE2 XS Scripting VSCODE extension to provide full intelisense for the built-in triggers.

I copy each of the _8cpp.html files into the ./references/doxygen_html folder in my workspace, and output them to ./references/xs

Specify the input and output directories in the config.json file.

