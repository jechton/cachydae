function ff --description "Open directory with file manager (default: current dir)"
    if set -q argv[1]
        open $argv[1]
    else
        xdg-open ./
    end
end
