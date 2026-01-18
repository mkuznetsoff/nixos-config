{unstable, ...}: {
  services.hyprpaper = {
    enable = true;
    package = unstable.hyprpaper;
    settings = {
      ipc ="on"; 
    };
  };
}
