#
# ~/.bash_profile
#

append_path '/home/lex/.cargo/bin'
[[ -f ~/.bashrc ]] && . ~/.bashrc



#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#$  exec startx
#fi



#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#  XKB_DEFAULT_LAYOUT=us exec sway

#fi


if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
 MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec sway
fi

#if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
#  MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
#fi

