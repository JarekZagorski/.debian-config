
function __complete_mc
    set -lx COMP_LINE (commandline -cp)
    test -z (commandline -ct)
    and set COMP_LINE "$COMP_LINE "
    /home/jakub/mc/mc
end
complete -f -c mc -a "(__complete_mc)"

