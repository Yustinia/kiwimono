if status is-interactive
# Commands to run in interactive sessions can go here
	starship init fish | source
	fastfetch -c examples/16.jsonc
end

set -g fish_greeting ""
/home/tiramisu/.local/bin/mise activate fish | source # added by https://mise.run/fish
