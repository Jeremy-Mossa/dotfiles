xmodmap -e "keycode 66 = Shift_L" &
<<<<<<< HEAD
feh --bg-scale ~/wallpapers/bkk_park_skyline.jpg &
# redshift -O 3500 &
rm /home/jbm/.config/chromium/Singleton* &
=======
feh --bg-scale ~/wallpapers/bkk_skyline2.avif &
>>>>>>> b664031 (Scheduled backup of dotfiles)
xterm -geometry 70x10+600+0 &
xterm -name "ANDROID CONNECTED" -geometry 70x30+600+50 -iconic &
wmctrl -r "ANDROID CONNECTED" -t 0 &
exec fluxbox 
