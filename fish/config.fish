if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path ~/.cargo/bin
starship init fish | source
set -g fish_greeting ""
fastfetch
