#!/bin/bash
# Switch the power profile to "Battery Life" and adjust the brightness to the desired value for Pop!_OS 22.04 LTS
system76-power profile battery && \
gdbus call --session \
           --dest org.gnome.SettingsDaemon.Power \
           --object-path /org/gnome/SettingsDaemon/Power \
           --method org.freedesktop.DBus.Properties.Set \
                    org.gnome.SettingsDaemon.Power.Screen Brightness "<int32 25>"
