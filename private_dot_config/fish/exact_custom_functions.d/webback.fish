function webback --description "Back up a website using wget" --argument url
    wget \
        --recursive \
        --no-clobber \
        --page-requisites \
        --html-extension \
        --convert-links \
        --restrict-file-names=windows \
        --domains $url \
        --no-parent \
        $url
end
