# Disable fish greeting
set -g fish_greeting

set -gx COLORTERM truecolor

if command -qs hx
    set -gx EDITOR hx
end

# Load custom functions
if test -d $__fish_config_dir/custom_functions.d
    set -gp fish_function_path $__fish_config_dir/custom_functions.d
end

# Load GPG keys
set GPG_TTY $(tty)

# Colorize man pages with bat or batcat
for cmd in bat batcat
    if command -qs $cmd
        set MANPAGER "sh -c 'col -bx | $cmd -l man -p'"
        break
    end
end

set -gx RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/ripgreprc"

set -U nvm_default_version latest
set -Ux NODE_OPTIONS "--disable-warning=ExperimentalWarning"
set -Ux COREPACK_ENABLE_AUTO_PIN 0

set -gx CHEAT_COLORS true
set -gx CHEAT_COLORSCHEME dark
