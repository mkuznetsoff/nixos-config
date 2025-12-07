{ ... }: {
networking = {
  hostName = "nixos";
  firewall.allowedTCPPorts = [ 8080 8081 9090 ];
  firewall.allowedUDPPorts = [ 9090 54982 48123 39001 44044 59678 ];

  networkmanager = {
    enable = true;
    wifi.backend = "wpa_supplicant";
    wifi.powersave = false;
  };

   wireless.iwd = {
     enable = false;
     settings = {
       Settings = {
         AutoConnect = true;
       };
     };
   };
};
}

