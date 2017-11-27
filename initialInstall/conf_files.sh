#!/bin/bash
#
# by: keith crowder
# date: 09.06.2013
# purpose: no need to sudo on the files for chlordane
#
#
cp -v /home/$USER/.conkyrc conked.txt

# Here is the conky script (simply copy and paste over the old one), and to open the configuration file click on Settings >> Conky >> edit conkyrc.

cat > /home/$USER/.conkyrc << EOF
# conky configuration
#
# The list of variables has been removed from this file in favour
# of keeping the documentation more maintainable.
# Check http://conky.sf.net for an up-to-date-list.
#
# For ideas about how to modify conky, please see:
# http://crunchbanglinux.org/forums/topic/59/my-conky-config/
#
# For help with conky, please see:
# http://crunchbanglinux.org/forums/topic/2047/conky-help/
#
# Enjoy!
##############################################
# Settings
##############################################
background yes
    use_xft yes
    xftfont HandelGotD:size=8
    xftalpha 0.5
    update_interval 4.0
    total_run_times 0
    own_window yes
    own_window_type normal
    own_window_transparent yes
    own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
    double_buffer yes
    minimum_size 200 5
    maximum_width 220
    draw_shades no
    draw_outline no
    draw_borders no
    draw_graph_borders yes
    default_color grey
    default_shade_color red
    default_outline_color green
    alignment top_right
    gap_x 5
    gap_y 5
    no_buffers yes
    uppercase no
    cpu_avg_samples 2
    override_utf8_locale no

    TEXT
    CPU $alignr ${cpu cpu0}%
    ${cpugraph cpu0}

    MEM $alignc $mem / $memmax $alignr $memperc%
    $membar

    swap $alignc $swap / $swapmax $alignr $swapperc%
    ${swapbar}

    / $alignc ${fs_used /} / ${fs_size /} $alignr ${fs_free_perc /}%
    ${fs_bar /}

    global $alignc ${fs_used /home/karlos/global} / ${fs_size /home/karlos/global} $alignr ${fs_free_perc /home/karlos/global}%
    ${fs_bar /home/karlos/global}

    $processes processes ($running_processes running)

    NAME $alignr PID    CPU
    ${top name 1} $alignr ${top pid 1} ${top cpu 1}
    ${top name 2} $alignr ${top pid 2} ${top cpu 2}
    ${top name 3} $alignr ${top pid 3} ${top cpu 3}
    ${top name 4} $alignr ${top pid 4} ${top cpu 4}
    ${top name 5} $alignr ${top pid 5} ${top cpu 5}
    ${top name 6} $alignr ${top pid 6} ${top cpu 6}
    ${top name 7} $alignr ${top pid 7} ${top cpu 7}
    ${top name 8} $alignr ${top pid 8} ${top cpu 8}
    ${top name 9} $alignr ${top pid 8} ${top cpu 9}

    Inbound $alignr ${downspeed eth0} kb/s
    ${downspeedgraph eth0}
    Outbound $alignr ${upspeed eth0} kb/s
    ${upspeedgraph eth0}

    Alt+F2$alignr Run Dialog
    Alt+F3$alignr Alt Menu
    Super+space$alignr Main Menu
    Super+t$alignr Terminal
    Super+f$alignr File Manager
    Super+e$alignr Editor
    Super+m$alignr Media Player
    Super+w$alignr Web Browser
    Super+g$alignr Graphics Editor
    Super+l$alignr Lock Screen
    Super+v$alignr Volume Control
    Super+x$alignr Logout
    PrtSc$alignr Screenshot
EOF

##########

cp -v /home/$USER/.config/tint2/tint2rc tinted.txt

cat > /home/$USER/.config/tint2/tint2rc << EOF
#---------------------------------------------
# TINT2 CONFIG FILE
#---------------------------------------------
# For more information about tint2, see:
# http://code.google.com/p/tint2/wiki/Welcome
#
# For more config file examples, see:
# http://crunchbanglinux.org/forums/topic/3232/my-tint2-config/

# Background definitions
# ID 1
rounded = 0
border_width = 0
background_color = #000000 40
border_color = #828282 0

# ID 2 - task active
rounded = 1
border_width = 0
background_color = #d8d8d8 30
border_color = #d8d8d8 30

# ID 3 - task
rounded = 1
border_width = 0
background_color = #000000 0
border_color = #000000 0

# ID 4
rounded = 1
border_width = 1
background_color = #888888 20
border_color = #ED2323 60

# ID 5 - taskbar
rounded = 0
border_width = 1
background_color = #000000 0
border_color = #000000 0

# ID 6 - active taskbar
rounded = 0
border_width = 1
background_color = #d8d8d8 8
border_color = #d8d8d8 0

# ID 7 - tooltip
rounded = 3
border_width = 0
background_color = #222222 90
border_color = #222222 90

# ID 8
rounded = 1
border_width = 1
background_color = #888888 20
border_color = #888888 20

# Panel
panel_monitor = all
panel_position = bottom center horizontal
panel_items = TSC
panel_size = 100% 30
panel_margin = 0 -1
panel_padding = 0 0
panel_dock = 0
wm_menu = 1
panel_layer = bottom
panel_background_id = 1

# Panel Autohide
autohide = 0
autohide_show_timeout = 0.3
autohide_hide_timeout = 1.5
autohide_height = 6
strut_policy = follow_size

# Taskbar
taskbar_mode = multi_desktop
taskbar_padding = 6 0 6
taskbar_background_id = 5
taskbar_active_background_id = 6
taskbar_name = 1
taskbar_name_background_id = 0
taskbar_name_active_background_id = 0
taskbar_name_font = Liberation Sans 9
taskbar_name_font_color = #828282 100
taskbar_name_active_font_color = #828282 100

# Tasks
urgent_nb_of_blink = 20
task_icon = 1
task_text = 0
task_centered = 1
task_maximum_size = 40 40
task_padding = 2 2
task_background_id = 3
task_active_background_id = 2
task_urgent_background_id = 4
task_iconified_background_id = 3

# Task Icons
task_icon_asb = 80 0 0
task_active_icon_asb = 100 0 0
task_urgent_icon_asb = 100 0 0
task_iconified_icon_asb = 80 0 0

# Fonts
task_font = Liberation Sans 06_55 6
task_font_color = #828282 60
task_active_font_color = #828282 100
task_urgent_font_color = #FFFFFF 100
task_iconified_font_color = #d8d8d8 60
font_shadow = 0

# Launcher
launcher_padding = 8 4 4
launcher_background_id = 0
launcher_icon_size = 24
# Specify icon theme names with launcher_icon_theme.
# if you have an XSETTINGS manager running (like xfsettingsd), tint2 will follow your current theme.
launcher_icon_theme = gnome-colors-statler
# Each launcher_item_app must be a full path to a .desktop file
launcher_item_app = /usr/share/applications/terminator.desktop
launcher_item_app = /usr/share/applications/xfce4-file-manager.desktop
launcher_item_app = /usr/share/applications/gedit.desktop
launcher_item_app = /usr/share/applications/iceweasel.desktop

# System Tray
systray = 1
systray_padding = 4 2 3
systray_sort = right2left
systray_background_id = 0
systray_icon_size = 24
systray_icon_asb = 100 0 0

# Clock
time1_format = %I:%M %p / %a %b %d
#time1_font = Museo 8
time1_font = AvantGardeLTMedium 8
#time2_format = %A %d %B
#time2_font = Monospace 6
clock_font_color = #b5b5b5 100
clock_padding = 4 0
clock_background_id = 0
clock_lclick_command = gsimplecal
clock_rclick_command = gsimplecal

# Tooltips
tooltip = 1
tooltip_padding = 2 2
tooltip_show_timeout = 0.0
tooltip_hide_timeout = 0.0
tooltip_background_id = 7
tooltip_font_color = #d8d8d8 100
tooltip_font = Liberation Sans normal 9.0

# Mouse
mouse_middle = none
mouse_right = toggleb
mouse_scroll_up = toggle
mouse_scroll_down = iconify

# Battery
battery = 1
battery_low_status = 20
battery_low_cmd = notify-send "battery low"
battery_hide = 96
bat1_font = Liberation Mono 8
bat2_font = Liberation Mono 8
battery_font_color = #b5b5b5 100
battery_padding = 2 0
battery_background_id = 0

# End of config
EOF

##########

cp -v /home/$USER/.config/openbox/autostart auto.txt

# I wanted to change my display to fit my flat screen monitor so I added these lines to my autostart configuration file (Settings >> Openbox >> Edit autostart):

cat >> /home/$USER/.config/openbox/autostart << EOF
## Display
xrandr -s 1650x1080 -r 60 &
xrandr --dpi 96 &
EOF

#
# end of program
#

