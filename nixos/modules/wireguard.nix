{ ... }: {
  networking.wg-quick.interfaces = {
    wg0 = {
      address = [ "10.0.0.2/32" ];
      dns = [ "1.1.1.1" "1.0.0.1"];
      privateKey = "WKWj9fYMDJgK4/BWF3NuEEhARyV3cvZMA0Vshi6YCGA=";
      mtu = 1420;
      
      peers = [
        {
          publicKey = "A3F4WnflCV3DYe/7W6LvAOxWVcUtbKDNtijxEPg75nU=";
          allowedIPs = [ "0.0.0.0/0" "::/0" ];
          endpoint = "195.133.64.248:48916";
        }
      ];
    };
  };
}
