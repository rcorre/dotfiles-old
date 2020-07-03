# dwm statusbar loop
while true; do
    bash ~/dotfiles/dwmstatus
    sleep 1s
done &

exec /usr/bin/sxhkd &
/usr/bin/numlockx on

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[ -f wallpaper.png ] && /usr/bin/feh --bg-center wallpaper.png || xsetroot -solid black
/usr/bin/xss-lock -- xtrlock -b &

exec dwm
