if status is-interactive
    # Commands to run in interactive sessions can go here
  set fish_greeting  
end

function ..
  cd ..
end

set LESS -r

# opam configuration
source /home/jakub/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true