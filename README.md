## Installation

Your first step is to clone this repository:

    git clone https://github.com/MusaGillani/dotfiles.git ~/.dotfiles

## Setting up configs(manually)
Create symbolic links for the configurations you want to use:

> to verify linking go the directory target directory for the link and run `ls -l` or `ls- al` for files starting with `.`

### TMUX

    ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

### NVIM

1. Create the configuration folder for nvim

    `/.config/nvim`

2. create the symbolic link
    ```sh
    ln -s ~/.dotfiles/nvim/init.lua ~/.config/nvim./init.lua
    ```
