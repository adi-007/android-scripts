#!/bin/bash

# IMPORTANT:
# 1) Change the coordinates of the GPS ON button(that tinder pops up when you open the app) 
#    (here it is set to 880 1153) and right swipe button(here it is set to 733 1769) according
#	   to your phone. 
# 2) Add the <device ID> (example: "F6AZFG144596") as obtained from the output of "./adb devices"
# 	 command.  


# Input from the first argument. It signifies the no. of right swipes that the user wants
arg1=$1  

counter=1

cd /home/adi/Android_SDK/platform-tools
./adb devices
./adb -s <device ID> shell "

am start -n com.tinder/.activities.LoginActivity

sleep 3
input tap 880 1153
input tap 880 1153
input tap 880 1153
exit
"

while [ $counter -le $arg1 ]
do
  ./adb -s <device ID> shell "
  input tap 733 1769
  exit
  "
  counter=$(( $counter + 1 ))
done
