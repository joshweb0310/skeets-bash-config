# Skeets-Bash-Config

## 🔹 About This Project
Personal Bash configuration toolkit with modular plugins, custom aliases, and workflow tools designed to enhance everyday Linux usage.

🔧 Features
Modular plugin system for loading tools, aliases, and functions
Personal alias collection for faster command‑line work
System info utilities (uptime, memory, disk, network, etc.)
Git helpers for quick status, branch, and commit shortcuts
Networking tools for diagnostics and quick checks
Clean folder structure for easy customization
Optional GUI support planned for future versions

📁 Project Structure

skeets-bash-config/
│
├── bin/
│   ├── skeets.sh               # main launcher
│   ├── install.sh              # installer script
│   ├── alias-manager.sh        # add/remove/list aliases
│   └── plugin-loader.sh        # loads plugins dynamically
│
├── plugins/
│   ├── skeets-aliases.sh       # your personal aliases
│   ├── git-tools.sh            # git helpers
│   ├── system-info.sh          # system info functions
│   └── networking.sh           # network tools
│
├── gui/
│   └── skeets-gui.sh           # optional GUI (future)
│
├── docs/
│   ├── installation.md
│   ├── usage.md
│   └── plugin-guide.md
│
└── README.md

📦 Installation

You can install the toolkit by cloning the repo and running the installer:
git clone https://github.com/YOURUSERNAME/skeets-bash-config.git
cd skeets-bash-config/bin
bash install.sh

This will:
Back up your existing .bashrc
Add Skeets‑Bash‑Config to your shell
Load plugins automatically

🚀 Usage

Launch the toolkit manually:
bash skeets.sh
Or simply open a new terminal — your plugins and aliases will load automatically.

Managing Plugins
List plugins:
bash skeets.sh --plugins

Enable/disable plugins:
bash skeets.sh --enable git-tools
bash skeets.sh --disable networking

Managing Aliases
List aliases:
bash skeets.sh --aliases

Add a new alias:
bash skeets.sh --add-alias ll='ls -la'

🧩 Plugin System

Each plugin is just a .sh file inside the plugins/ directory.
The loader automatically sources any plugin that is:

enabled
properly formatted
executable
This makes it easy to create your own tools or share them with others.

🗺️ Roadmap

Add GUI using yad or whiptail
Add plugin templates
Add alias import/export
Add backup/restore for .bashrc
Add system monitoring plugin
Add color themes for terminal output


