{ inputs, ... }: {
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    overlay.enable = true;

    settings = {
      layout = {
        "bar.layouts" = {
          "*" = {
            "left" = [ "dashboard" "workspaces" "windowtitle" ];
            "middle" = [ "media" ];
            "right" = [
              "kbinput"
              "volume"
              "bluetooth"
              "battery"
              "network"
              "clock"
              "systray"
              "notifications"
            ];
          };
        };
        theme.font.name = "SF Pro Display";
        theme.font.size = "14px";
        theme.bar.transparent = true;

        bar.launcher.icon = "";
        bar.clock.format = "%I:%M %p";
        # bar.workspaces.numbered_active_indicator = "color";
        # bar.workspaces.show_icons = true;
        bar.bluetooth.label = false;
        bar.battery.hideLabelWhenFull = true;

        
        menus.dashboard.powermenu.confirmation = false;
        menus.dashboard.shortcuts.left.shortcut1.icon = "󰖔";
        menus.dashboard.shortcuts.left.shortcut1.command = "night-shift";
        menus.dashboard.shortcuts.left.shortcut1.tooltip = "Night-shift";
        menus.dashboard.shortcuts.left.shortcut2.icon = "";
        menus.dashboard.shortcuts.left.shortcut2.command = "tofi -drun";
        menus.dashboard.shortcuts.left.shortcut2.tooltip = "Search Apps";

        menus.dashboard.shortcuts.right.shortcut1.icon = "";
        menus.dashboard.shortcuts.right.shortcut1.command = "hyprpicker -a";
        menus.dashboard.shortcuts.right.shortcut1.tooltip = "Color Picker";
        menus.dashboard.shortcuts.right.shortcut2.icon = "󰄀";
        menus.dashboard.shortcuts.right.shortcut2.command = "screenshot region swappy";
        menus.dashboard.shortcuts.right.shortcut2.tooltip = "Recording";
        menus.dashboard.shortcuts.right.shortcut3.icon = "";
        menus.dashboard.shortcuts.right.shortcut3.command = ''
          gpu-screen-recorder -w screen -f 60 -a default_output \
          -o "$HOME/Videos/video_$(date +%Y-%m-%d_%H-%M-%S).mp4"
        '';
        menus.dashboard.shortcuts.right.shortcut3.tooltip = "Recording";
        menus.dashboard.stats.enabled = false;
        menus.dashboard.directories.enabled = false;
        menus.clock.weather.enabled = false;


        menus.power.lowBatteryNotification = true;

        theme.bar.menus.menu.notifications.scrollbar.width = "50px";
        scalingPriority = "hyprland";
      };
    };
  };
}
