# XS-To-XML
A python based XS script to XML converter to turn an XS script into trigger XML for Age of Mythology Retold.

I open a VS Code workspace to .\Age of Mythology Retold\<user ID>\trigger
My trigger folder root looks like:
```
trigger\.vscode\launch.json
trigger\.vscode\tasks.json
trigger\scripts\xs_to_xml_dir.py

trigger\scripts\<project 1>\ProjectScripts_start.xml
trigger\scripts\<project 1>\ProjectScripts_end.xml
trigger\scripts\<project 1>\ProjectScripts.xs

trigger\scripts\<project 2>\ProjectScripts.xs
... etc

trigger\trigtemp.xs
```

I keep all of the active .xs scripts I'm working on directly under the trigger\scripts folder, and subfolder for each project, so that they're easy to include in scenarios for testing. Note that .xs scripts won't work online unless every player has the .xs script in the same exact path, which is why there's a need to convert them to triggers.

Place the launch.json and tasks.json in the .vscode folder

Place the xs_to_xml_dir.py file under the scripts folder

You will need to have the python extensions for VS code installed.
I use Task Runner by Sana Ajani to run the tasks.

Additional usage:
For any .xs file, you can create a <name>_start.xml or a <name>_end.xml, if so the boilerplate that's added to the start or end of the file to make it a working trigger will be replaced by the contents of the _start or _end file. This allows you to create custom boilerplate for certain scripts.
