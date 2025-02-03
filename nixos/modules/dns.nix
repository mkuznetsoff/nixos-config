{ pkgs, inputs, unstable, ... }: {

  services.dnscrypt-proxy2 = {
    enable = true;
    settings = {
      server_names = ["scaleway-fr" "google" "yandex" "cloudflare"];
      listen_addresses = ["127.0.0.1:53" "[::1]:53"];
    };
  };

  networking.resolvconf.extraOptions = [
    "nameserver ::1"
    "nameserver 127.0.0.1"
    "options edns0 single-request-reopen"
  ];
}
