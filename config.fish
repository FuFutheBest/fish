# Greeting
source $HOME/.config/fish/config/greeting.fish

# oh-my-posh theme
oh-my-posh init fish --config $HOME/.config/fish/themes/catppuccin.omp.json | source

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Alias file
    source ~/.config/fish/config/alias.fish
end




