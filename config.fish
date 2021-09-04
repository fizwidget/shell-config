# Notes

# - "Fisher" is used for fish plugin management.
# - "Bass" is used for bash compatibility.

# Greeting

function fish_greeting
    fortune -s | cowsay
    echo
end

# Abbreviations

if status --is-interactive
    abbr --add --global c 'clear'
    abbr --add --global gb 'git branch'
    abbr --add --global gco 'git checkout'
    abbr --add --global gci 'git commit'
    abbr --add --global gd 'git diff'
    abbr --add --global gs 'git status'
    abbr --add --global gst 'git stash'
    abbr --add --global gsp 'git stash pop'
    abbr --add --global gm 'git merge'
    abbr --add --global gms 'git merge --squash'
    abbr --add --global gpl 'git pull'
    abbr --add --global gps 'git push'
end

# Node Version Manager configuration

set -x NVM_DIR "$HOME/.nvm"

function nvm
    # We'd ideally use `brew --prefix nvm` to get the path, but it's kinda slow :/
    bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent
