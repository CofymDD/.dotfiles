<h2 align="center">CofymDD NixOS Dotfiles</h2>

### Applications:

|                          |             NixOS 23.11               |
|--------------------------|:-------------------------------------:|
| **Desktop Environment**  |   [Hyprland](https://hyprland.org)      |
| **Terminal Emulator**    |   [Foot](https://codeberg.org/dnkl/foot) |
| **Display Server**       |   [Wayland](https://wayland.freedesktop.org)     |

### Directory Structure

```
├── home
│  ├── programs
│  │   ├── foot
│  │   └── hyprland
│  └── home.nix
├── nixos
│  ├── configuration.nix
│  └── hardware-configuration.nix
├── flake.nix
└── install.sh
```

### Installation

0. Clone the repo:
```bash
git clone https://github.com/CofymDD/.dotfiles.git ~/
```

1. Run installation script:

```bash
cd ~/.dotfiles
```

```bash
chmod +x install.sh
```

```bash
./install.sh
```

##
<div id="header" align="center">
    <a href="https://cofymdd.com">
        <img src="https://i.imgur.com/MlkPDUj.png" width="100"/>
    </a>
    <a href="https://cofymdd.com">
        <h3>CofymDD</h3>
    </a>
</div>