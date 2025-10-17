function cdc --description "Change directory and clear terminal"
    if test (count $argv) -gt 0
        cd "$argv[1]" && clear
    else
        cd && clear
    end
end
