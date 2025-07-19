{ pkgs, inputs, ...}: {

  home.packages = with pkgs; [
    mpc-cli
  ];

  services.mpd = {
    enable = true;
    musicDirectory = "/home/mk/Music";
    dataDir = "/home/mk/.local/share/mpd";
    extraConfig = ''

      pid_file "~/.config/mpd/pid"

      auto_update "yes"
      restore_paused "yes"
      max_output_buffer_size "16384"

      audio_output {
        type            "pipewire"
        name            "pipewire"
      }
    ''; 
      network.startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  };

}
