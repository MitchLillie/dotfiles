This is not the simple VSCode settings. It contains items from both the Application Support files as well as a generated file, extension_export. This is imported via a shell command in the dotbot config.

Update the extensions with:

code --list-extensions > ./vscode/extension_export

Probably a good idea to take a close look at these, because some are very unique to a particular machine. e.g. Rust language doesn't need to be included here.