#!/usr/bin/env bash

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

if [[ $SHELL =~ "zsh" ]]; then
    config=.zshrc
else
    config=.bashrc
fi

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/$config
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/$config
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/$config

