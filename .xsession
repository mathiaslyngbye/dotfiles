#!/bin/bash

# Set solid black background
xsetroot -solid "#000000"

# Define dwm status message
print_bat(){
    if [ -e "/sys/class/power_supply/BAT0" ]; then
        capacity="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
        status="$(cat /sys/class/power_supply/BAT*/status)"
   
        if [ "$status" != "Unknown" ]
        then
            case "$status" in
                Charging)
                    status_short="CHR"
                    ;;
                Discharging)
                    status_short="BAT"
                    ;;
                Full)
                    status_short="FULL"
                    ;;
            esac
    
            echo -e "[${status_short}: ${capacity}%]"
        fi
    fi
}

print_date(){
    date "+%F"
}

print_time(){
    date "+%k:%M"    
}
# while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
#while xsetroot -name "$(print_bat) | $(print_date) | $(print_time)"
while xsetroot -name "$(print_bat) `date` `uptime | sed 's/.*,//'`"
do
   	sleep 1
done &

# Set autolock on afk
xautolock -time 10 -locker slock &

# Launch dwm
exec dwm

# Garbage fix to run MATLAB doesnt work here
#export _JAVA_AWT_WM_NONREPARENTING=1

