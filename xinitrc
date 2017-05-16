# dwm statusbar loop
while true; do
    bash ~/dotfiles/dwmstatus
    sleep 1s
done &

/usr/bin/numlockx on
/usr/bin/setxkbmap -option ctrl:swap_lalt_lctl -option caps:escape

exec dwm
