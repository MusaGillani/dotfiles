if status is-interactive
    # Commands to run in interactive sessions can go here
end


function y

    set tmp (mktemp -t "yazi-cwd.XXXXXX")

    yazi $argv --cwd-file="$tmp"

    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]

        builtin cd -- "$cwd"

    end

    rm -f -- "$tmp"

end

abbr edit_alacritty "nvim /mnt/c/Users/moses.gg/AppData/Roaming/alacritty/alacritty.toml"

abbr edit_nvim  "nvim $HOME/.config/nvim/init.lua"

abbr edit_fish  "nvim $HOME/.config/fish/config.fish"

abbr sauce "source $HOME/.config/fish/config.fish"

fzf_configure_bindings --directory=\cf

starship init fish | source

zoxide init fish | source

mise activate fish | source

jj util completion fish | source

