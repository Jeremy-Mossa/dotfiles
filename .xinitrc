xrdb -merge ~/.Xresources
setxkbmap jp &
echo 95 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold &
brightnessctl set 50% &
source ~/.kshrc &
# ~/scripts/kill_tplink_led.pl &
redshift -O 4500 &
feh --bg-scale ~/Storage/wallpapers/tokyo_skyline1.jpg &
xterm -geometry 70x10+600+0 &

# Japanese keyboard – カタカナ／ひらがな key → Right Alt
sleep 2 && {
    xmodmap -e "clear Lock"
    xmodmap -e "keycode  66 = Shift_L NoSymbol Shift_L"
    xmodmap -e "keycode 101 = Alt_R Meta_R"
    xmodmap -e "add Shift = Shift_L"
    xmodmap -e "add Mod1  = Alt_R"
    xmodmap -e "keycode 132 = yen bar"
    xmodmap -e "keycode 19 = zero Thai_baht"
} &

exec fluxbox 
