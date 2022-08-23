if status is-interactive
    # Commands to run in interactive sessions can go here
  set fish_greeting  
end

function ..
  cd ..
end

export LESS='-r'
export LESSOPEN='|pygmentize -P style=dracula %s'
