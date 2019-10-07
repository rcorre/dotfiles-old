# dwm statusbar loop
while true; do
    bash ~/dotfiles/dwmstatus
    sleep 1s
done &

/usr/bin/xbindkeys
/usr/bin/numlockx on
/usr/bin/setxkbmap -option ctrl:swap_lalt_lctl -option caps:escape

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[ -f wallpaper.png ] && /usr/bin/feh --bg-center wallpaper.png || xsetroot -solid black
/usr/bin/xss-lock -- xtrlock -b &
exec dwm
