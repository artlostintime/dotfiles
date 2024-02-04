starship init fish | source
import_aliases_git

set -U fish_greeting "Greetings! Master $USER" 

if status is-interactive
    # Commands to run in interactive sessions can go here
end
