{ ... }: {
networking = {
  hostName = "nixos";
  firewall.allowedTCPPorts = [ 8080 8081 9090 ];
  networkmanager = {
    enable = true;
    wifi.backend = "iwd";
  };
};
  
}

