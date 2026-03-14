if status is-interactive
# Commands to run in interactive sessions can go here
end

fastfetch -c examples/32.jsonc
set -x fish_greeting ""
starship init fish | source
mise activate fish | source
