{ pkgs, config, lib, ... }: {

  home.packages = with pkgs; [
    qt5.qtwayland
    qt6.qtwayland
    libsForQt5.qt5ct
    qt6ct
    swww
    kdePackages.xwaylandvideobridge
    wl-clipboard
    wlsunset
    hyprshot
    hyprpicker
    hyprland-qt-support
    hyprpolkitagent
    playerctl
    mako
    pamixer
    playerctl
    mpdris2
    cliphist
    brightnessctl
    gpu-screen-recorder
  ];

    xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
    configPackages = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
  };


  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd = {
      enable = false;
      variables = [
        "--all"
      ]; # https://wiki.hyprland.org/Nix/Hyprland-on-Home-Manager/#programs-dont-work-in-systemd-services-but-do-on-the-terminal
    };
    
    settings = {

      "$mainMod" = "SUPER";

      monitor = ",preferred,auto,1.25";

      env = [

        "XCURSOR_SIZE,28"
        "XCURSOR_THEME,macOS"
        "COLORTERM,truecolor"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "MOZ_ENABLE_WAYLAND,1"
        "ANKI_WAYLAND,1"
        "DISABLE_QT5_COMPAT,0"
        "NIXOS_OZONE_WL,1"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM=wayland,xcb"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "ELECTRON_OZONE_PLATFORM_HINT,auto"
        "DISABLE_QT5_COMPAT,0"
        "DIRENV_LOG_FORMAT,"
        "WLR_DRM_NO_ATOMIC,1"
        "WLR_BACKEND,vulkan"
        "WLR_RENDERER,vulkan"
        "WLR_NO_HARDWARE_CURSORS,1"
        "SDL_VIDEODRIVER,wayland"
        "CLUTTER_BACKEND,wayland"
      ];

      exec-once = [
        "swww init"
        "swww img ${config.stylix.image}"
        "hyprpanel"
        "wlsunset -l 56.95 -L 53.206 -t 5000"
        "wl-paste --watch cliphist store"
      ];



      input = {

        kb_layout = "us,ru";
        kb_variant = "";
        kb_model = "";
        kb_options = "grp:caps_toggle";
        kb_rules = "";

        follow_mouse = 1;

        touchpad = {
           natural_scroll = false;
        };

        repeat_rate = 30;
        repeat_delay = 250;

        sensitivity = -0.2; # -1.0 - 1.0, 0 means no modification.

      };

      cursor = {
        no_hardware_cursors = true;
      };

      general = {
        resize_on_border = true;
        gaps_in = 5;
        gaps_out = 5;
        border_size = 2;
        layout = "dwindle";
         "col.active_border" = lib.mkForce "rgba(${config.lib.stylix.colors.base0E}ff)";
      };

       decoration = {
         rounding = 20;
         shadow = {
           enabled = true;
           range = 20;
           render_power = 3;
         };
          # blur = {
          #   enabled = true;
          #   size = 18;
          # };
       };

        animations = {
          enabled = true;
          bezier = [
        "linear, 0, 0, 1, 1"
        "md3_standard, 0.2, 0, 0, 1"
        "md3_decel, 0.05, 0.7, 0.1, 1"
        "md3_accel, 0.3, 0, 0.8, 0.15"
        "overshot, 0.05, 0.9, 0.1, 1.1"
        "crazyshot, 0.1, 1.5, 0.76, 0.92"
        "hyprnostretch, 0.05, 0.9, 0.1, 1.0"
        "menu_decel, 0.1, 1, 0, 1"
        "menu_accel, 0.38, 0.04, 1, 0.07"
        "easeInOutCirc, 0.85, 0, 0.15, 1"
        "easeOutCirc, 0, 0.55, 0.45, 1"
        "easeOutExpo, 0.16, 1, 0.3, 1"
        "softAcDecel, 0.26, 0.26, 0.15, 1"
        "md2, 0.4, 0, 0.2, 1"
      ];

        animation = [
        "windows, 1, 2.5, md3_decel, popin 60%"
        "windowsIn, 1, 2.5, md3_decel, popin 60%"
        "windowsOut, 1, 2.5, md3_accel, popin 60%"
        "border, 1, 3, default"
        "fade, 1, 2.5, md3_decel"
        "layersIn, 1, 2.5, menu_decel, slide"
        "layersOut, 1, 2.5, menu_accel"
        "fadeLayersIn, 1, 2.5, menu_decel"
        "fadeLayersOut, 1, 2.5, menu_accel"
        "workspaces, 1, 2.5, menu_decel, slide"
        "specialWorkspace, 1, 2.5, md3_decel, slidevert"
      ];
    };

      dwindle = {
        pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # you probably want this

      };

      master = {
      #  no_gaps_when_only = 0;
        allow_small_split = true;
        mfact = 0.60;
      };


      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
        workspace_swipe_invert = false;
        workspace_swipe_distance = 200;
        workspace_swipe_forever = true;
      };

      misc = {
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        render_ahead_of_time = false;
        disable_hyprland_logo = true;
      };

      # windowrule = [
      #   "float, ^(imv)$"
      #   "float, ^(mpv)$"
      # ];
      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
      windowrulev2 = [
        "bordersize 0, floating:0, onworkspace:w[tv1]"
        "rounding 0, floating:0, onworkspace:w[tv1]"
        "bordersize 0, floating:0, onworkspace:f[1]"
        "rounding 0, floating:0, onworkspace:f[1]"
      ];

      bind = [
        "$mainMod, Return, exec, footclient"
        "$mainMod, Q,      killactive,"
        "$mainMod  Shift,  Q, exit,"
        "$mainMod, F,      togglefloating,"
        "$mainMod, D,      exec, wofi --show=drun"
        "$mainMod, P,      pseudo, # dwindle"
        "$mainMod, I,      togglesplit, # dwindle"

        # Move focus with mainMod + VI keys
        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"

        # Moving windows
        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, l, movewindow, r"
        "$mainMod SHIFT, k, movewindow, u"
        "$mainMod SHIFT, j, movewindow, d"

        # Window resizing                     X  Y
        "$mainMod CTRL, h, resizeactive, -60 0"
        "$mainMod CTRL, l, resizeactive,  60 0"
        "$mainMod CTRL, k, resizeactive,  0 -60"
        "$mainMod CTRL, j, resizeactive,  0  60"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        # Example special workspace (scratchpad)
        #"$mainMod,       S, togglespecialworkspace, magic"
        #"$mainMod SHIFT, S, movetoworkspace,        special:magic"

        # Volume and Media Control
        ", XF86AudioRaiseVolume, exec, pamixer -i 5 "
        ", XF86AudioLowerVolume, exec, pamixer -d 5 "
        ", XF86AudioMute,        exec, pamixer -t"
        ", XF86AudioMicMute,     exec, pamixer --default-source -t"
        ", XF86AudioPlay,        exec, playerctl play-pause"
        ", XF86AudioPause,       exec, playerctl play-pause"
        
        # Brightness control
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
        ", XF86MonBrightnessUp,   exec, brightnessctl set +5% "

	
      	# Screenshot a window
      	" $mainMod SHIFT, PRINT, exec, hyprshot -z -o ~/Pictures/Screenshots/ -m window "
      	# Screenshot a monitor
	      " $mainMod, PRINT, exec, hyprshot -z -o ~/Pictures/Screenshots/ -m output "
      	# Screenshot a region
      	" , PRINT, exec, hyprshot -z -o ~/Pictures/Screenshots/ -m region "

        # Clipboard history manager with cliphist
      	'' $mainMod, V, exec, cliphist list | wofi --dmenu --pre-display-cmd "echo '%s' | cut -f 2" | cliphist decode | wl-copy ''

      ];

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

    };
  };
}
