function ll --wraps=ls --wraps='ls -alh' --description 'alias ll=ls -alh'
  ls -alh $argv; 
end

function l --wraps='ls -alh | less -r' --wraps='ls -alh --color=always | less -r' --description 'alias l=ls -alh --color=always | less -r'
  ls -alh --color=always | command less -r $argv; 
end
