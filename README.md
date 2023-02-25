# dotfiles

## Index

| Source           | Destination                         |
|------------------|-------------------------------------|
| `bashrc`         | `~/.bashrc`                         |
| `bash_profile`   | `~/.bash_profile`                   |
| `sway`           | `~/.config/sway/config`             |
| `waybar`         | `~/.config/waybar/config`           |
| `waybar.css`     | `~/.config/waybar/style.css`        |
| `gtk3.ini`       | `~/.config/gtk-3.0/settings.ini`    |
| `gtk2.ini`       | `~/.gtkrc-2.0`                      |
| `alacritty.yml`  | `~/.config/alacritty/alacritty.yml` |
| `icons.theme`    | `~/.icons/default/index.theme`      |
| `init.vim`       | `~/.config/nvim/init.vim`           |
| `user-dirs.dirs` | `~/.config/user-dirs.dirs`          |

## Installation

> WARNING: the following process will result in any files already existing in
> the destinations listed above being over-written.

To install these dotfiles run `scripts/install.sh`.

## Updating

The install script creates hard links to all the specified destinations, as
such, each dotfile is synchronised with it's destination.
