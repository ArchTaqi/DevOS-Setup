#!/usr/bin/env bash
brew install uv
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc

# uv venv venv --python 3.12
