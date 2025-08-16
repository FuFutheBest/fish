# Basic
alias .. "cd .."
alias ... "cd ../.."

alias la "ls -Gla"
alias ld 'ls -l | grep "^d"'
alias ll 'ls -ahlF'
if type -q exa
    alias l exa
    alias la 'exa --long --all --group --header --binary --links --inode --blocks'
    alias ld 'exa --long --all --group --header --list-dirs'
    alias ll 'exa --long --all --group --header --git'
    alias lt='exa --long --all --group --header --tree --level'
end

if type -q bat
    alias cat 'bat --paging=never'
end


# editor
alias v nvim
alias vi nvim

# git
alias g git
alias ga "git add"
alias gst "git status"
alias gb "git branch"
alias gba "git branch -a"
alias gbd "git branch -D"
alias gca "git commit -a -m"
alias gcm "git commit -m"
alias gco "git checkout"
alias gcob "git checkout -b"
alias gcp "git cherry-pick"
alias gp "git push"
alias gpom "git pull origin master"
alias gp "git pull"
alias grh "git reset --hard"
alias grs "git reset --soft"

# Grep aliases
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

# Long running command alert
alias alert 'notify-send --urgency=low -i "$([ $status = 0 ] && echo terminal || echo error)" (history | tail -n 1 | sed "s/^[0-9]* //")'

# Ls hyperlinks
alias ls 'ls --hyperlink --color=auto'
alias delta "delta --hyperlinks --hyperlinks-file-link-format='file://{path}#{line}'"
alias rg 'rg --hyperlink-format=kitty'

# Git flow
alias gf "$HOME/.config/fish/scripts/git_flow.sh"
alias gfm "$HOME/.config/fish/scripts/git_flow.sh -m"
   

