xmodmap -e "keycode 66 = Shift_L" &
feh --bg-scale ~/wallpapers/bkk_park_skyline.jpg &
# redshift -O 3500 &
rm /home/jbm/.config/chromium/Singleton* &
xterm -geometry 70x10+600+0 &
xterm -name "ANDROID CONNECTED" -geometry 70x30+600+50 -iconic &
wmctrl -r "ANDROID CONNECTED" -t 0 &
exec fluxbox 
