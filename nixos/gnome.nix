{pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        glib
        gsettings-desktop-schemas
        dconf
        dconf-editor

        # Gnome extensions and their dependances
        gnomeExtensions.workspace-matrix
        libgtop
        gnomeExtensions.system-monitor-next
        gnomeExtensions.focus-changer
    ];

    services.dbus.enable = true;

    programs.dconf = {
        enable = true;
        profiles.user.databases = [
            {
            settings = {
                # Set terminal launch shortcut
                "org/gnome/settings-daemon/plugins/media-keys" = {
                    custom-keybindings = [
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                    ];
                };
                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
                    name = "Terminal";
                    command = "kitty";
                    binding = "<Control><Alt>t";
                };
                # Enable gnome extensions
                "org/gnome/shell" = {
                    enabled-extensions = "['focus-changer@heartmire', 'system-monitor-next@paradoxxx.zero.gmail.com', 'wsmatrix@martin.zurowietz.de']";
                };
                # Remove unused and conflicting shortcuts
                "org/gnome/shell/keybindings" = {
                    shift-overview-down = "@as []";
                    shift-overview-up = "@as []";
                };
                # Set window management shortcuts
                "org/gnome/desktop/wm/keybindings" = {
                    begin-move = "@as []";
                    move-to-monitor-left = "['<Shift><Alt><Super>Left']";
                    move-to-monitor-down = "['<Shift><Alt><Super>Down']";
                    move-to-monitor-right = "['<Shift><Alt><Super>Right']";
                    move-to-monitor-up = "['<Shift><Alt><Super>Up']";
                    move-to-workspace-left = "['<Shift><Control><Alt>Left']";
                    move-to-workspace-right = "['<Shift><Control><Alt>Right']";
                    switch-to-workspace-left = "['<Control><Alt>Left']";
                    switch-to-workspace-right = "['<Control><Alt>Right']";
                    unmaximize = "['<Super>Down']";
                };
                # Focus changer gnome extension settings
                "org/gnome/shell/extensions/focus-changer" = {
                    focus-down = "['<Alt><Super>Down']";
                    focus-left = "['<Alt><Super>Left']";
                    focus-right = "['<Alt><Super>Right']";
                    focus-up = "['<Alt><Super>Up']";
                };
                # Workspace matrix gnome extension settings
                "org/gnome/shell/extensions/wsmatrix" = {
                    popup-timeout = "300";
                    scale = "0.25";
                };
            };
            locks = [];
        }];
    };
}
