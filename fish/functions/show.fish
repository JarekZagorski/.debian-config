function show --wraps=LESS=\'-r\'\ LESSOPEN=\'\|pygmentize\ -P\ style=dracula\ \%s\'\ less --description "colorful alias for 'less'"
  LESS='-r' LESSOPEN='|pygmentize -P style=dracula %s' less $argv; 
end
