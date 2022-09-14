if status is-interactive
    # Commands to run in interactive sessions can go here
  set fish_greeting  
  set --path --append PATH /usr/local/go/bin
end

function ..
  cd ..
end
