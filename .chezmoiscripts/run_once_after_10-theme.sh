#!/usr/bin/env bash
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Set initial theme
mkdir -p ~/.config/cachydae/current
ln -snf ~/.config/cachydae/themes/tokyo-night ~/.config/cachydae/current/theme
ln -snf ~/.config/cachydae/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/cachydae/current/background

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/cachydae/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/cachydae/current/theme/mako.ini ~/.config/mako/config

mkdir -p ~/.config/eza
ln -snf ~/.config/cachydae/current/theme/eza.yml ~/.config/eza/theme.yml

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-blue"

sudo gtk-update-icon-cache /usr/share/icons/Yaru
