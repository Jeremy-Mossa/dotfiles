xmodmap -e "keycode 66 = Shift_L" &
feh --bg-scale ~/wallpapers/bkk_skyline2.avif &
redshift -O 3500 &
xterm -geometry 70x10+600+0 &
xterm -name "ANDROID CONNECTED" -geometry 70x30+600+50 -iconic &
wmctrl -r "ANDROID CONNECTED" -t 0 &
exec fluxbox 
