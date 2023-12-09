if status is-interactive
    # Commands to run in interactive sessions can go here
  set fish_greeting  
end

function ..
  cd ..
end

alias vim "nvim"
alias exercism "~/programs/exercism/bin/exercism"

# meaningless comment

set LESS -r

# opam configuration
source /home/jakub/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/jakub/github/ScratchJr-Desktop/node_modules/tabtab/.completions/electron-forge.fish ]; and . /home/jakub/github/ScratchJr-Desktop/node_modules/tabtab/.completions/electron-forge.fish