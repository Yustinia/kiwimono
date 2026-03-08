if status is-interactive
# Commands to run in interactive sessions can go here
end

fastfetch -c examples/16.jsonc
set -x fish_greeting ""
starship init fish | source

/home/yustinia/.local/bin/mise activate fish | source # added by https://mise.run/fish
mise activate fish | source
