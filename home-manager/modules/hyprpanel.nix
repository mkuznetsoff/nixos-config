{ inputs, ... }: {
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    overlay.enable = true;

    # settings = {
    #   layout = {
    #     "bar.layouts" = {
    #       "*" = {
    #         "left" = [ "dashboard" "workspaces" "windowtitle" ];
    #         "middle" = [ "media" "cava" ];
    #         "right" = [
    #           "systray"
    #           "volume"
    #           "bluetooth"
    #           "battery"
    #           "network"
    #           "clock"
    #           "notifications"
    #         ];
    #       };
    #     };
    };
}
