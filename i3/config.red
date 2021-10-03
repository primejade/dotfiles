#   _  _ ___    
#  | || | __|   H
#  | __ | _|    A
#  |_||_|___|   P
#               

# i3 config file (v4)
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
#
# Set mod key (Mod1=<Alt>, Mod4=<Super>)
set $mod Mod1
#
# set default desktop layout (default is tiling)
# workspace_layout tabbed <stacking|tabbed>
#
# Configure border style <normal|1pixel|pixel xx|none|pixel>
default_border pixel 2
default_floating_border normal
#
# Hide borders
hide_edge_borders none
#
# change borders
bindsym $mod+u border none
bindsym $mod+y border pixel 2
bindsym $mod+n border normal
#
# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:Monaco 11
font pango:ubuntumono nerd font 14
#
# Use Mouse+$mod to drag floating windows
floating_modifier $mod
#
# set apps
#
set $term alacritty
#set $term st
#set $term kitty
#
#set $aterm st -T 'Simple Terminal'
set $aterm kitty

set $fileman pcmanfm
set $browser firefox
#
# start a terminal
bindsym $mod+Return exec $term
bindsym $mod+x exec $aterm
#bindsym $mod+ctrl+t exec kitty
bindsym $mod+t exec xterm
#
bindsym $mod+shift+Return exec mlterm
# bindsym $mod+shift+Return exec termite --hold --exec='sudo -i'
#
# kill focused window
bindsym $mod+shift+c kill
#
# start program launcher
bindsym $mod+d exec --no-startup-id dmenu_run 
#bindsym $mod+d exec --no-startup-id dmenu_run -hp 'chromium' -fn 'dejavu mono-13' -p 'run'
# bindsym $mod+d exec --no-startup-id /home/hos/.local/bin/dmenu_bind.sh # -fn 'dejavu mono'
bindsym $mod+p exec --no-startup-id rofi -show drun
# bindsym $mod+d exec --no-startup-id dmenu_bind.sh # -fn 'dejavu mono'
#
# launch categorized menu
# bindsym $mod+z exec --no-startup-id morc_menu
#
# start Telegram at startup 
# exec ~/program/Telegram/Telegram
#
# kill telegram kybind
# bindsym $mod+Ctrl+t exec pkill Telegram
#
################################################################################################
## sound-section - DO NOT EDIT if you wish to automatically upgrade Alsa -> Pulseaudio later! ##
################################################################################################
#
# exec --no-startup-id volumeicon
# bindsym $mod+Ctrl+m exec terminal -e 'alsamixer'
#   exec --no-startup-id pulseaudio
#   exec --no-startup-id pa-applet
#bindsym $mod+Ctrl+m exec pavucontrol
#
################################################################################################
#
# Screen brightness controls
  bindsym XF86MonBrightnessUp exec "xbacklight -inc 10; notify-send 'brightness up'"
  bindsym XF86MonBrightnessDown exec "xbacklight -dec 10; notify-send 'brightness down'"
#
## Start Applications
#
bindsym $mod+F1 exec $aterm -e 'ranger'
bindsym $mod+F2 exec $aterm -e 'cmus'
bindsym $mod+F3 exec $aterm -e 'top'
bindsym $mod+F4 exec $aterm -e 'glances'
#
bindsym $mod+F5 exec $aterm -e 'htop'
bindsym $mod+F6 exec $aterm -e 'cmatrix'
bindsym $mod+F7 exec $aterm -e 'nudoku'
bindsym $mod+F8 exec $aterm -e 'nsnake'
#
bindsym $mod+F9 exec $aterm -e 'links'
# bindsym $mod+F10 exec $aterm -e ''
# bindsym $mod+F11 exec $aterm -e ''
bindsym $mod+F12 exec $aterm
bindsym $mod+Shift+T exec gvim
#
# 
## mocp         # terminal-based music player
## bmenu        # terminal-based file manager
## pulsemixer   # terminal-based audio monitoring
## links        # terminal-based browser
## aria2        # terminal-based download manager
## ffmpeg       # terminal-based media convertor
## scrot        # terminal-based screenshooter
## mc           # terminal-based file manager
# 
#
#
# bindsym $mod+Shift+d --release exec "killall dunst; exec notify-send 'restart dunst'"
#bindsym $mod+Print exec --no-startup-id scrot
bindsym Print exec --no-startup-id mate-screenshot -i
#bindsym Print exec --no-startup-id scrot 'Screenshot_%Y-%m-%d-%I-%M-%s_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES)/Screenshot ; feh $$(xdg-user-dir PICTURES)/Screenshot/$f'
#
# focus_follows_mouse no
#
# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right
#
# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
#
# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right
#
# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right
#
# workspace back and forth (with/without active container)
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth
#
# split orientation
bindsym $mod+h split h;exec notify-send 'tile horizontally'
bindsym $mod+v split v;exec notify-send 'tile vertically'
bindsym $mod+q split toggle
#
# toggle fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle
#
# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split
#
# toggle tiling / floating
bindsym $mod+Shift+space floating toggle
#
# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle
#
# toggle sticky
bindsym $mod+Shift+s sticky toggle
#
# focus the parent container
bindsym $mod+a focus parent
#
# move the currently focused window to the scratchpad
# bindsym $mod+Shift+minus move scratchpad
#
# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
# bindsym $mod+minus scratchpad show
#
# navigate workspaces next / previous
bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev
#
# Workspace names
# to display names or symbols instead of plain workspace numbers you can use
# something like: set $ws1 1:mail
#                 ﬋     
#           
set $ws1 1 
set $ws2 2{}
set $ws3 3爵 
set $ws4 4[]
set $ws5 5 
set $ws6 6 
set $ws7 7 
set $ws8 8 
set $ws9 9 
#
#set $ws1 1
#set $ws2 2
#set $ws3 3
#set $ws4 4
#set $ws5 5
#set $ws6 6
#set $ws7 7
#set $ws8 8
#set $ws9 9
#
#set $ws1 1term(1)
#set $ws2 2code(2)
#set $ws3 3inet(3)
#set $ws4 4down/tel(4)
#set $ws5 5file(5)
#set $ws6 6docu(6)
#set $ws7 7edit(7)
#set $ws8 8virt(8)
#set $ws9 9medi(9)
#
# terminal
# code
# web
# download
# file
# doc
# edit
# virt
# media
#
# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
#
# Move focused container to workspace
bindsym $mod+Ctrl+1 move container to workspace $ws1
bindsym $mod+Ctrl+2 move container to workspace $ws2
bindsym $mod+Ctrl+3 move container to workspace $ws3
bindsym $mod+Ctrl+4 move container to workspace $ws4
bindsym $mod+Ctrl+5 move container to workspace $ws5
bindsym $mod+Ctrl+6 move container to workspace $ws6
bindsym $mod+Ctrl+7 move container to workspace $ws7
bindsym $mod+Ctrl+8 move container to workspace $ws8
bindsym $mod+Ctrl+9 move container to workspace $ws9
#
# Move to workspace with focused container
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9; workspace $ws9
#
# Open applications on specific workspaces
  assign [class="firefox"] $ws3
  assign [class="chromium"] $ws3
  assign [class="qutebrowser"] $ws3
  assign [class="Chromium"] $ws3
  assign [class="palemoon"] $ws3
  assign [class="Pcmanfm"] $ws5
# assign [class="thunar"] $ws5
  assign [class="persepolis"] $ws4
# assign [class="mpv"] $ws8
# assign [class="vlc"] $ws8
  assign [class="Element"] $ws4
# assign [class="Thunderbird"] $ws1
# assign [class="Pale moon"] $ws3
  assign [class="(?i)virtualbox"] $ws8
# assign [class="Skype"] $ws5
#
## Open specific applications in floating mode
# for_window [title="alsamixer"] floating enable border pixel 1
  for_window [title="xterm"] floating enable border pixel 2
  for_window [title="RunPrompt"] floating enable border pixel
# for_window [class="Clipgrab"] floating enable
  for_window [title="File Transfer*"] floating enable
  for_window [class="Galculator"] floating enable border pixel 1
  for_window [class="GParted"] floating enable border normal
  for_window [title="feh"] floating enable border normal
  for_window [title="Ark"] floating enable border normal
  for_window [title="vokoscreen"] floating enable border normal
# for_window [class="Lightdm-settings"] floating enable
  for_window [class="Lxappearance"] floating enable enable border normal
# for_window [class="Gvim"] floating enable sticky enable border normal
  for_window [class="Pavucontrol"] floating enable
  for_window [class="qt5ct"] floating enable sticky enable border normal
  for_window [class="Qtconfig-qt4"] floating enable sticky enable border normal
  for_window [class="Simple-scan"] floating enable border normal
# for_window [class="st"] floating enable border pixel 2 
  for_window [class="(?i)virtualbox"] border pixel 2
  for_window [class="Xfburn"] floating enable
  for_window [class="Telegram"] floating enable border pixel 2
  for_window [class="persepolis"] floating enable border normal 
#
# switch to workspace with urgent window automatically
for_window [urgent=latest] focus
#
# reload the configuration file
bindsym $mod+Shift+x reload
#
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
#
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"
#
# Set shut down, restart and locking features
bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
  bindsym l exec --no-startup-id i3exit lock, mode "default"
  bindsym s exec --no-startup-id i3exit suspend, mode "default"
  bindsym u exec --no-startup-id i3exit switch_user, mode "default"
  bindsym e exec --no-startup-id i3exit logout, mode "default"
  bindsym h exec --no-startup-id i3exit hibernate, mode "default"
  bindsym r exec --no-startup-id i3exit reboot, mode "default"
  bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"
#
#
  # exit system mode: "Enter" or "Escape"
  bindsym Return mode "default"
  bindsym Escape mode "default"
}
#
# Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"
mode "resize" {
  # These bindings trigger as soon as you enter the resize mode
  # Pressing left will shrink the window’s width.
  # Pressing right will grow the window’s width.
  # Pressing up will shrink the window’s height.
  # Pressing down will grow the window’s height.
  bindsym j resize shrink width 5 px or 5 ppt
  bindsym k resize grow height 5 px or 5 ppt
  bindsym l resize shrink height 5 px or 5 ppt
  bindsym semicolon resize grow width 5 px or 5 ppt
#
  # same bindings, but for the arrow keys
  bindsym Left resize shrink width 10 px or 10 ppt
  bindsym Down resize grow height 10 px or 10 ppt
  bindsym Up resize shrink height 10 px or 10 ppt
  bindsym Right resize grow width 10 px or 10 ppt
#
  # exit resize mode: Enter or Escape
  bindsym Return mode "default"
  bindsym Escape mode "default"
}
#
# Lock screen
bindsym $mod+Ctrl+l exec --no-startup-id blurlock
#
# Autostart applications
# exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# exec --no-startup-id nitrogen --restore; sleep 1; picom -b
# exec --no-startup-id manjaro-hello
  exec --no-startup-id nm-applet
  exec --no-startup-id xrdb ~/.Xresources
# exec --no-startup-id xfce4-power-manager
# exec --no-startup-id pamac-tray
# exec --no-startup-id clipit
# exec --no-startup-id blueman-applet
# exec_always --no-startup-id sbxkb
# exec --no-startup-id start_conky_gray
# exec --no-startup-id start_conky_green
# exec --no-startup-id xautolock -time 35 -locker blurlock
# exec_always --no-startup-id ff-theme-util
# exec_always --no-startup-id fix_xcursor
#
# Color palette used for the terminal ( ~/.Xresources file )
# Colors are gathered based on the documentation:
# https://i3wm.org/docs/userguide.html#xresources
# Change the variable name at the place you want to match the color
# of your terminal like this:
# [example]
# If you want your bar to have the same background color as your 
# terminal background change the line 362 from:
# background #14191D
# to:
# background $term_background
# Same logic applied to everything else.
#set_from_resource $term_background background
#set_from_resource $term_foreground foreground
#set_from_resource $term_color0     color0
#set_from_resource $term_color1     color1
#set_from_resource $term_color2     color2
#set_from_resource $term_color3     color3
#set_from_resource $term_color4     color4
#set_from_resource $term_color5     color5
#set_from_resource $term_color6     color6
#set_from_resource $term_color7     color7
#set_from_resource $term_color8     color8
#set_from_resource $term_color9     color9
#set_from_resource $term_color10    color10
#set_from_resource $term_color11    color11
#set_from_resource $term_color12    color12
#set_from_resource $term_color13    color13
#set_from_resource $term_color14    color14
#set_from_resource $term_color15    color15
#
# Start i3bar to display a workspace bar (plus the system information i3status if available)
bar {
  i3bar_command i3bar
# status_command i3blocks
  status_command i3status
# status_command xmobar
  position top
#
## please set your primary output first. Example: 'xrandr --output eDP1 --primary'
#	tray_output primary
#	tray_output eDP1
#
# bindsym button4 nop
# bindsym button5 nop
#font xft:ubuntu 12
  strip_workspace_numbers yes
#
  colors {
    background #010101
    statusline #F9FAF9
    separator  #111111
#
#                      border  backgr. text
# green :
#   focused_workspace  #001100 #003300 #00FA00
#   active_workspace   #595B5B #353836 #FDF6E3
#   inactive_workspace #0D0000 #000033 #00A4FF  
#   binding_mode       #16a085 #2C2C2C #F9FAF9
#   urgent_workspace   #440000 #330000 #FF2800
#
# red :
   focused_workspace  #440000 #330000 #FF2800
   active_workspace   #595B5B #353836 #FDF6E3
   inactive_workspace #0D0000 #000033 #00A4FF  
   binding_mode       #16a085 #2C2C2C #F9FAF9
   urgent_workspace   #001100 #003300 #00FA00
#                           
# b/w :
#    focused_workspace  #d8d8d8 #d8d8d8 #151617
#    active_workspace   #595B5B #353836 #FDF6E3
#    inactive_workspace #151617 #151617 #d8d8d8  
#    binding_mode       #16a085 #2C2C2C #F9FAF9
#    urgent_workspace   #000000 #001133 #00FA00
#                            
# blue :
#   focused_workspace  #0D0000 #000033 #00A4FF
#   active_workspace   #595B5B #353836 #FDF6E3
#   inactive_workspace #002004 #003606 #1b9000  
#   binding_mode       #16a085 #2C2C2C #F9FAF9
#   urgent_workspace   #440000 #330000 #FF2800 
    }
}
#
# hide/unhide i3status bar
bindsym $mod+m bar mode toggle
#
# Theme colors
# class                   border  backgr. text    indic.   child_border
#
# green :
#   client.focused          #009900 #009900 #000000 #268BD2
#   client.focused_inactive #000020 #000020 #FF1100 #454948
#   client.unfocused        #01000C #01000C #8D0728 #454948
#   client.urgent           #FF1100 #FF1100 #01000C #FDF6E3
#   client.placeholder      #0c0c0c #0c0c0c #ffffff #000000 
#
# red : 
   client.focused          #ff4400 #ee0000 #01000C #115599
   client.focused_inactive #000020 #000020 #FF6800 #454948
   client.unfocused        #01000C #01000C #aa3400 #454948
   client.urgent           #009900 #009900 #000000 #268BD2
   client.placeholder      #0c0c0c #0c0c0c #ffffff #000000 
#                           
# b/w : 
#    client.focused          #d8d8d8 #d8d8d8 #151617 #115599
#    client.focused_inactive #151617 #151617 #d8d8d8 #454948
#    client.unfocused        #111213 #111213 #a5a5a5 #454948
#    client.urgent           #009900 #009900 #000000 #268BD2
#    client.placeholder      #0c0c0c #0c0c0c #ffffff #000000 
#                           
# blue is not ready : 
#   client.focused          #ff4400 #ff6500 #01000C #115599
#   client.focused_inactive #000020 #000020 #FF1100 #454948
#   client.unfocused        #01000C #01000C #681200 #454948
#   client.urgent           #009900 #009900 #000000 #268BD2
#   client.placeholder      #0c0c0c #0c0c0c #ffffff #000000 
#
# orange: 
#   client.focused          #ff6800 #ff6500 #111111 #666666
#   client.focused_inactive #000020 #000020 #FF1100 #454948
#   client.unfocused        #01000C #01000C #8D0728 #454948
#   client.urgent           #009900 #009900 #000000 #268BD2
#   client.placeholder      #0c0c0c #0c0c0c #ffffff #000000 
 
#
  client.background       #2B2C2B
#
#############################
### settings for i3-gaps: ###
#############################
#
# Set inner/outer gaps
#gaps inner 8
#gaps outer 2
#
# Additionally, you can issue commands with the following syntax. This is useful to bind keys to changing the gap size.
# gaps inner|outer current|all set|plus|minus <px>
# gaps inner all set 10
# gaps outer all plus 5
#
# Smart gaps (gaps used if only more than one container on the workspace)
#smart_gaps on
#
# Smart borders (draw borders around container only if it is not the only container on this workspace) 
# on|no_gaps (on=always activate and no_gaps=only activate if the gap size to the edge of the screen is 0)
#smart_borders no_gaps
#
# Press $mod+Shift+g to enter the gap mode. Choose o or i for modifying outer/inner gaps. Press one of + / - (in-/decrement for current workspace) or 0 (remove gaps for current workspace). If you also press Shift with these keys, the change will be global for all workspaces.
#set $mode_gaps Gaps: (o) outer, (i) inner
#set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
#set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
#bindsym $mod+Shift+g mode "$mode_gaps"
#
#mode "$mode_gaps" {
#        bindsym o      mode "$mode_gaps_outer"
#        bindsym i      mode "$mode_gaps_inner"
#        bindsym Return mode "default"
#        bindsym Escape mode "default"
#}
#mode "$mode_gaps_inner" {
#        bindsym plus  gaps inner current plus 5
#        bindsym minus gaps inner current minus 5
#        bindsym 0     gaps inner current set 0
#
#        bindsym Shift+plus  gaps inner all plus 5
#        bindsym Shift+minus gaps inner all minus 5
#        bindsym Shift+0     gaps inner all set 0
#
#        bindsym Return mode "default"
#        bindsym Escape mode "default"
#}
#mode "$mode_gaps_outer" {
#        bindsym plus  gaps outer current plus 5
#        bindsym minus gaps outer current minus 5
#        bindsym 0     gaps outer current set 0
#
#        bindsym Shift+plus  gaps outer all plus 5
#        bindsym Shift+minus gaps outer all minus 5
#        bindsym Shift+0     gaps outer all set 0
#
#        bindsym Return mode "default"
#        bindsym Escape mode "default"
#}
#
## wallpaper
#
exec ~/.config/i3/fehbg 
exec xrdb ~/.Xresources
# exec ~/.mouse.pad
#
##
# 
#exec --no-startup-id conky -c ~/.conky/Gotham_Fa/Gotham -d
#exec --no-startup-id xcompmgr           # minimal compasitor for transparentcy
#exec --no-startup-id picom            # compasitor for transparentcy
#exec caffeine
#exec setxkbmap -layout us,ir -option 'grp:alt_caps_toggle'
exec setxkbmap -layout us,ir -option 'grp:lwin_toggle'
exec --no-startup-id xset r rate 300 50
# exec $HOME/.config/polybar/launch.sh
