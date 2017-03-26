# dwm statusbar loop
while true; do
   /usr/bin/xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

/usr/bin/numlockx on
/usr/bin/setxkbmap -option ctrl:swap_lalt_lctl -option caps:escape

exec dwm
