{ user, pkgs, ... }: {
  networking.openconnect = {
    interfaces = {
      work = {
        gateway = "asa.mfptrading.ru";
        protocol = "anyconnect";
        user = "115";
        certificate = "/etc/ssl/certs/fcf95aa811402b7d166a7072e3873f843a3c1af2.pem";
        privateKey = "/etc/ssl/certs/private/fcf95aa811402b7d166a7072e3873f843a3c1af2.key"; 
        autoStart = false;
        extraOptions = {
          cafile = "/etc/ssl/certs/server/014d7f425cfa24a9924a7f7a52d491f5f39d8ca5.pem";
          no-dtls = true;
        };
        
      };
    };
  };

  environment.systemPackages = with pkgs; [
    openconnect
  ];
}
