{ ... }: {
  networking = {
    hostName = "nixos";
    wireless.iwd = {
     enable = true;
       settings = {
         Settings = {
           AutoConnect = true;
         };
       };
    };
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
    
  };
  
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
  
}

