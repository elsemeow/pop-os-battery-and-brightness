# Autostart battery and brightness shell script

Switch the power profile to "Battery Life" and adjust the brightness to the desired value for Pop!_OS 22.04 LTS.

## Problem

For some unknown reason, the `system76-power` utility resets the selected battery profile every time the system boots. To solve this problem, I created a small script (`battery_and_brightness.sh`) that changes the profile at startup to `Battery Life`. Brightness is hard-coded in this profile, I'm not comfortable with this value, so I change it too, in this case to `25` (`<int32 25>`), you can set another value, for example `50`.


## How to use

Copy `battery_and_brightness.sh` script to your `home` directory, for example `/home/user`.

Then create `/home/[YOUR_USERNAME]/.config/autostart/gnome-terminal.desktop` file and copy config below to this file (the same can be done using the `Startup Applications` utility).

*Be sure to replace the directory name in the path with your username.*

```
[Desktop Entry]
Type=Application
Exec=gnome-terminal -- bash /home/[YOUR_USERNAME]/battery_and_brightness.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Battery and Brightness
Name=Battery and Brightness
Comment[en_US]=Switch the power profile to "Battery Life" and adjust the brightness to the desired value for Pop!_OS 22.04 LTS
Comment=Switch the power profile to "Battery Life" and adjust the brightness to the desired value for Pop!_OS 22.04 LTS
```
