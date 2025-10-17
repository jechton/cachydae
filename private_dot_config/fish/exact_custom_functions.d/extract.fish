function extract --description "extract file using the right command for the type"
    if not set -q argv[1]
        echo "Usage: extract <archive_file>" >&2
        return 1
    end

    set -l archive_file $argv[1]

    if not test -f $archive_file
        echo "Error: File '$archive_file' not found." >&2
        return 1
    end

    set -l file_type (file --mime-type --brief $archive_file)

    switch "$file_type"
        case application/x-rar-compresseed
            unrar x $archive_file
        case application/zip
            unzip $archive_file
        case application/x-tar
            tar xvf $archive_file
        case application/x-bzip2
            tar xvjf $archive_file # Handles .tar.bz2, .tbz2
        case application/gzip
            tar xvzf $archive_file # Handles .tar.gz, .tgz
        case application/x-xz
            tar xvfJ $archive_file # Handles .tar.xz
        case application/x-7z-compressed
            7z x $archive_file
        case application/x-compress
            uncompress $archive_file
        case application/zstd
            unzstd $archive_file
        case "*" # Default if no match is found
            echo "Unknown file type: $file_type" >&2
            return 1
    end
end
