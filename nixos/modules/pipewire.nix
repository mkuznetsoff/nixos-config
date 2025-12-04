{ config, ... }: {
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
  
  hardware.pulseaudio.enable = false;
  
  systemd.services.mpd.environment = {
    XDG_RUNTIME_DIR = "/run/user/${toString config.users.users.mk.uid}"; # User-id must match above user. MPD will look inside this directory for the PipeWire socket.
};
}
