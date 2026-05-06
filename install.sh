#!/bin/bash

echo "Installing Skeets Bash Config..."

# Add loader to ~/.bashrc if missing
if ! grep -q "Skeets-Bash-Config" ~/.bashrc; then
    cat << 'EOF' >> ~/.bashrc

# Load Skeets Bash Config
if [ -d "$HOME/Skeets-Bash-Config/bash" ]; then
    for file in $HOME/Skeets-Bash-Config/bash/*.sh; do
        [ -f "$file" ] && source "$file"
    done
fi
EOF
fi

echo "Done. Reload your shell with: source ~/.bashrc"
