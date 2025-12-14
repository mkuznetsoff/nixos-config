{ ... }: {
  networking = {
    hostName = "nixos";
    firewall.allowedTCPPorts = [ 8080 8081 9090 ];
    firewall.allowedUDPPorts = [ 9090 54982 48123 39001 44044 59678 ];

    hosts = {
      "192.168.230.5" = ["mfptrading.ru" "web.mfptrading.ru" "mfpinvest.ru" "crm.mfptrading.ru" "mfpg.ru"];
    };

    networkmanager = {
      enable = true;
      wifi.backend = "wpa_supplicant";
      wifi.powersave = false;
      dns = "systemd-resolved";
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
  services.resolved.enable = true;
}

