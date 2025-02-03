{ pkgs, inputs, ...}: {
  
  services.mpdris2 = {
    enable = true;
    multimediaKeys = true;
  };


}
