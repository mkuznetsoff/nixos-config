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
              "kbLayout"
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
        theme.font.size = "12px";
        theme.bar.transparent = true;
      # theme.bar.buttons.monochrome = true;
      # theme.bar.menus.monochrome = true;

        bar.launcher.icon = "";
        bar.clock.format = "%a %b %d  %I:%M %p";
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
        menus.dashboard.shortcuts.right.shortcut2.tooltip = "Screenshot";

        menus.power.lowBatteryNotification = true;
      };
    };
  };
}
