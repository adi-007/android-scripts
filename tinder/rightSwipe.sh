#!/bin/bash

arg1=$1  #input from the first argument
counter=1

cd /home/adi/Android_SDK/platform-tools
./adb devices
./adb -s F6AZFG177486 shell "
am start -n com.tinder/.activities.LoginActivity

sleep 3
input tap 880 1153
input tap 880 1153
input tap 880 1153
sleep 2
exit
"

while [ $counter -le $arg1 ]
do
  ./adb -s F6AZFG177486 shell "
  input tap 733 1769
  input tap 733 1769
  input tap 733 1769
  input tap 733 1769
  exit
  "
  counter=$(( $counter + 1 ))
done
