{ pkgs, ... }:
let
  scripts = import ./scripts.nix { inherit pkgs; };

  mainWaybarConfig = {
    mod = "dock";
    layer = "bottom";
    #gtk-layer-shell = false;
    height = 0;
    position = "bottom";

    modules-left = [
      "custom/logo"
      "hyprland/workspaces"
    ];
    modules-right = [
      "hyprland/language"
      "network"
      "bluetooth"
      "pulseaudio"
      "custom/battery"
      "tray"
    ];
    modules-center = [ "clock" ];

    "hyprland/workspaces" = {
      all-outputs = "true";
      on-click = "activate";
      #    persistent_workspaces = { "1": [] };
    };

    bluetooth = {
      format = "";
      format-connected = " {device_battery_percentage}";
      format-disabled = "";
      tooltip-format = " {device_alias}";
      tooltip-format-connected = "{device_enumerate}";
      tooltip-format-enumerate-connected = " {device_alias}";
    };

    clock = {
      format = "󰥔 {:%a, %d %b, %I:%M %p}";
    };

    "custom/battery" = {
      exec = "${scripts.battery}/bin/script";
      format = " {}";
      interval = 10;
    };

    "custom/logo" = {
      exec = "echo ''";
      format = "{} ";
    };

    "hyprland/window" = {
      format = "  {}";
      rewrite = {
        "(.*) — Mozilla Firefox" = "$1 󰈹";
        "(.*)Steam" = "Steam 󰓓";
      };
      separate-outputs = true;
    };

    "hyprland/language" = {
      format = " {}";
      format-en = "eng";
      format-ru = "rus";
    };

    network = {
      format-disconnected = " Disconnected";
      format-ethernet = "󱘖 Wired";
      format-linked = "󱘖 {ifname} (No IP)";
      format-wifi = "󰤨 {essid}";
      interval = 5;
      max-length = 30;
      tooltip-format = "󱘖 {ipaddr}  {bandwidthUpBytes}  {bandwidthDownBytes}";
    };

    pulseaudio = {
      format = "{icon} {volume}%";
      format-icons = {
        car = " ";
        default = [
          ""
          ""
          ""
        ];
        hands-free = "";
        headphone = "";
        headset = "";
        phone = "";
        portable = "";
      };
      format-muted = "󰝟 {volume}%";
      on-click = "pavucontrol -t 3";
      on-click-middle = "pamixer -t";
      on-scroll-down = "pamixer -d 5";
      on-scroll-up = "pamixer -i 5";
      scroll-step = 5;
      tooltip-format = "{icon} {desc} {volume}%";
    };

    tray = {
      icon-size = 16;
      spacing = 5;
    };
  };

  css = ''
    * {
        border: none;
        font-family: JetBrains Mono Nerd Font;
        font-weight: bold;
        font-size: 12;
        min-height: 0px;
    }


    #workspaces {
        color: @theme_text_color;
    }

    #workspaces button {
        color: @theme_text_color;
        padding: 5px;
        animation: gradient_f 2s ease-in infinite;
        transition: all 0.2s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #workspaces button.active {
        color: @blue_1;
        animation: gradient_f 20s ease-in infinite;
        transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #workspaces button:hover {
        color: @blue_1;
        animation: gradient_f 20s ease-in infinite;
        transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
    }


    #custom-battery,
    #clock,
    #network,
    #language,
    #bluetooth,
    #pulseaudio {
      color: @theme_text_color;
      padding: 0 10px;
    }

    #custom-logo {
        color: @blue_1;
       margin-left: 12px;
       margin-right: 5px;
        font-size: 20px;
    }

    #tray {
      padding: 0 10px;
    }

    tooltip {
        background: @theme_unfocused_base_color;
        color: @theme_text_color;
        border-radius: 10px;
        border-width: 1px;
        border-style: solid;
        border-color: shade(alpha(@theme_text_colors, 0.9), 1.25);
    }
  '';
in
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    });
    style = css;
    settings = {
      mainBar = mainWaybarConfig;
    };
    systemd.enable = true;
  };
}
