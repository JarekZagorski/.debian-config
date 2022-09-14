function ll --wraps=ls --wraps='ls -alh' --description 'alias ll=ls -alh'
  ls -alh $argv; 
end
