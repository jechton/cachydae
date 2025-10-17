function ch --description "Pipe cht.sh output to 'bat'"
    cheat "$argv" | bat --style=numbers,grid
end
