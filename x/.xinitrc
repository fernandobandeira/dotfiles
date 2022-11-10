xrandr --output HDMI-0 --left-of DP-0 --rotate right
xsetroot -cursor_name left_ptr &
xdg-mime default thunar.desktop inode/directory application
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

sxhkd &
picom &
polybar catppuccin &
dunst &
flameshot &
[ ! -s ~/.config/mpd/pid ] && mpd &
exec dbus-launch bspwm
