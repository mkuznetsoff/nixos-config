{pkgs, inputs, ...}: {

  # programs.mangohud = {
  #   enable = true;
  #   settings = {
  #     fps_limit = 0;
  #     vsync = 2;
  #   };
  # };

  
 nixpkgs.overlays = [ inputs.polymc.overlay ];
  
  nixpkgs.config.allowUnfree = true;

   # home.sessionVariables = {
   #   STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
   # };
  
  home.packages = with pkgs; [
   polymc
#    lutris
#    steam
   gamemode
   dxvk
#    gamescope
   # protontricks
   # xboxdrv
   # protonup-ng
  ];
}
