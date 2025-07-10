
dconf write /org/gnome/shell/enabled-extensions "['focus-changer@heartmire', 'system-monitor-next@paradoxxx.zero.gmail.com', 'wsmatrix@martin.zurowietz.de']"

# Remove conflicting shortcuts
gsettings set org.gnome.shell.keybindings shift-overview-down "[]"
gsettings set org.gnome.shell.keybindings shift-overview-up "[]"

# Set window management shortcuts
gsettings set org.gnome.desktop.wm.keybindings begin-move "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Shift><Alt><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Shift><Alt><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Shift><Alt><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Shift><Alt><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Control><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Control><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Control><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Control><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>Down']"

# Focus changer gnome extension settings
dconf write /org/gnome/shell/extensions/focus-changer/focus-down "['<Alt><Super>Down']"
dconf write /org/gnome/shell/extensions/focus-changer/focus-left "['<Alt><Super>Left']"
dconf write /org/gnome/shell/extensions/focus-changer/focus-right "['<Alt><Super>Right']"
dconf write /org/gnome/shell/extensions/focus-changer/focus-up "['<Alt><Super>Up']"

# Workspace matrix gnome extension settings
dconf write /org/gnome/shell/extensions/wsmatrix/popup-timeout 300
dconf write /org/gnome/shell/extensions/wsmatrix/scale 0.15

# System monitor gnome extension stettings
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/background "'#ffffff16'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-batt0-color "'#f2002e'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-hidesystem false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-position 9
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-show-menu false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-show-text true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-style "'digit'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/battery-time false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/center-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/compact-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-display true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-individual-cores false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-iowait-color "'#002f3d'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-nice-color "'#00a3ff'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-other-color "'#001d26'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-position 0
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-refresh-time 1500
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-system-color "'#0092e6'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/cpu-user-color "'#0072b3'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-position 5
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-read-color "'#c65000'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-refresh-time 2000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-show-text true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-usage-style "'pie'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/disk-write-color "'#ff6700'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-display true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-fan0-color "'#f2002e'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-position 8
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-sensor-label "'nouveau - 1'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/fan-style "'digit'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-freq-color "'#001d26'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-position 1
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-refresh-time 1500
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-show-menu false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/freq-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-memory-color "'#00ff82'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-position 6
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-show-menu false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-show-text true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/gpu-used-color "'#00b35b'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/icon-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-buffer-color "'#00ff82'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-cache-color "'#aaf5d0'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-display true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-position 2
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-program-color "'#00b35b'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/memory-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/move-clock false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-collisions-color "'#ff0000'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-display true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-down-color "'#fce94f'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-downerrors-color "'#ff6e00'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-position 4
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-refresh-time 1000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-speed-in-bits false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-up-color "'#fb74fb'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/net-uperrors-color "'#e0006e'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/rotate-labels false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/settings-schema-version 1
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/show-tooltip false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-display false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-position 3
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-show-text true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-style "'graph'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/swap-used-color "'#8b00c3'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-display true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-fahrenheit-unit false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-graph-width 100
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-position 7
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-refresh-time 5000
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-sensor-label "'coretemp - Core 0'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-show-menu true
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-show-text false
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-style "'digit'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-threshold 0
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/thermal-tz0-color "'#f2002e'"
dconf write /org/gnome/shell/extensions/system-monitor-next-applet/tooltip-delay-ms 0

