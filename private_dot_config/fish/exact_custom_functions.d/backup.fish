function backup --description "Copy and append .bak" --argument filename
    set -l filename (echo "$filename" | sed 's/\/$//')
    cp -r "$filename" "$filename.bak"
end
