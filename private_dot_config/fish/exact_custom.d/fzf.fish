# Use eza
if type -q eza
    set fzf_preview_dir_cmd eza --all --color=always
end

# FZF options
for cmd in bat batcat
    if type -q $cmd
        set -x FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*" --color=16 --preview="'$cmd' --color=always --style=numbers --line-range=:500 {}"'
        break
    end
end
if not set -q FZF_DEFAULT_OPTS
    set -x FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*" --color=16'
end

# Show hidden files except some directories
set fzf_fd_opts --hidden --exclude=.git --exclude=.github --exclude=.cache

if type -q fzf
    if test (fzf --help | grep -- --fish)
        fzf --fish | source
    end
end
