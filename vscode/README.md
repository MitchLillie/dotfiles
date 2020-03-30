This is not the simple VSCode settings. It contains items from both the Application Support files as well as a generated file, extension_export. This is imported via a shell command in the dotbot config.

Update the extensions with:

code --list-extensions > ./vscode/extension_export