# WIP
# Installation

First step is to clone this repository:

    git clone https://github.com/MusaGillani/dotfiles.git ~/dotfiles

## Setting up homebrew and install softwares

install [homebrew](https://brew.sh/) and run this command in the `~/dotfiles` directory

```sh
brew bundle install
```

the brewfile used to unstall the bundle is created using `brew bundle --no-vscode dump` in the `~/dotfiles/directory`


## Using GNU Stow:(WIP)

run this command in the root of the cloned repo:

```sh
    cd ~/dotfiles
    stow .
```

## Setting up configs(manually)
Create symbolic links for the configurations you want to use:

> to verify linking go the directory target directory for the link and run `ls -l` or `ls- al` for files starting with `.`

### TMUX

    ln -s ~/dotfiles/dot-config/.tmux.conf ~/.tmux.conf

### NVIM

1. Create the configuration folder for nvim

    `/.config/nvim`

2. create the symbolic link
    ```sh
    ln -s ~/dotfiles/dot-config/nvim/init.lua ~/.config/nvim./init.lua
    ```
