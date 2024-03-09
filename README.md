<h2 align="center">CofymDD NixOS Dotfiles</h2>

### Applications:

|                          |             NixOS 23.11               |
|--------------------------|:-------------------------------------:|
| **Desktop Environment**  |   [Hyprland](https://hyprland.org)      |
| **Display Server**       |   [Wayland](https://wayland.freedesktop.org)     |

### Directory Structure

```
├── home
│  ├── programs
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
git clone https://github.com/CofymDD/.dotfiles.git ~/  | cd ~/.dotfiles
```

1. Run installation script:

```bash
chmod +x install.sh
./install.sh
```

##
<div id="header" align="center">
    <a href="https://cofymdd.com">
        <img src="https://avatars.githubusercontent.com/u/57263672" width="100" class="rounded-image"/>
    </a>
    <a href="https://cofymdd.com">
        <h3>CofymDD</h3>
    </a>
</div>

<style>
    .rounded-image {
        border-radius: 50%;
    }
</style>