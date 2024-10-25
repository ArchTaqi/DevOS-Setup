#!/usr/bin/env bash
# Install rustup using Homebrew
echo "Installing rustup..."
brew install rustup
# Source zshrc to ensure any profile changes take effect
echo "Sourcing ~/.zshrc..."
source ~/.zshrc
# Reinstall rustup-init to ensure it's up-to-date
echo "Reinstalling rustup-init..."
brew reinstall rustup-init
# Initialize rustup (this will install Rust and set up toolchains)
echo "Running rustup-init..."
rustup-init -y
# Confirm installation of Rust compiler
echo "Checking rustc installation..."
rustc --version
# Add Rust's Cargo bin path to zshrc if not already present
echo "Adding Cargo to PATH in ~/.zshrc..."
if ! grep -q 'export PATH="$HOME/.cargo/bin:$PATH"' ~/.zshrc; then
    echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
    echo "Cargo path added to ~/.zshrc"
else
    echo "Cargo path already exists in ~/.zshrc"
fi

# Source zshrc again to apply the new PATH
echo "Sourcing ~/.zshrc again..."
source ~/.zshrc
# Create a new Rust project
echo "Creating a new Rust project 'todo-cli'..."
cargo new todo-cli
echo "Setup complete!"
