{ pkgs, inputs, ...}: {

  services.openssh = {
    enable = true;
  };

}
