#! /usr/env/bin/sh

# Hack to skip installing on Spinstances
if [ -z ${SPIN+x} ]
then
    echo "Installing vscode extensions"
    cat vscode/extension_export | xargs -L 1 code --install-extension
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Installing homebrew bundle via Brewfile"
    brew bundle
    echo "Installing ohmyzsh"
    ZSH="$(pwd)/ohmyzsh" ZSH_CUSTOM="$(pwd)/zsh-custom" sh ./ohmyzsh/tools/install.sh --unattended
    echo "I think you'll need to handle merging the zshrc with the pre.ohmyzsh version."
    echo "Run <prefix> + I inside of tmux to load plugins."
fi