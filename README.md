# XS-To-XML
An XS script to XML converter to turn an XS script into a trigger.

I open a VS Code workspace to .\Age of Mythology Retold\<user ID>\trigger
My trigger folder root looks like:
.vscode
scripts
trigtemp.xs

Place the launch.json and tasks.json in the .vscode folder
Place the xs_to_xml_dir.py file under the scripts folder

You will need to have the python extensions for VS code installed.
I use Task Runner by Sana Ajani to run the tasks.

Additional usage:
For any .xs file, you can create a <name>_start.xml or a <name>_end.xml, if so the boilerplate that's added to the start or end of the file to make it a working trigger will be replaced by the contents of the _start or _end file. This allows you to create custom boilerplate for certain scripts.
