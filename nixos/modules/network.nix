{ ... }: {
networking = {
  hostName = "nixos";
  firewall.allowedTCPPorts = [ 8080 8081 9090 ];
  firewall.allowedUDPPorts = [ 9090 54982 48123 39001 44044 59678 ];
  networkmanager = {
    enable = false;
    wifi.backend = "iwd";
    wifi.powersave = false;
  };

  wireless.iwd = {
    enable = true;
    settings = {
      Settings = {
        AutoConnect = true;
      };
    };
  };
};
}

