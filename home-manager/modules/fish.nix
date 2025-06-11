{ ... }: {

  programs.fish = {

    enable = true;

    shellAliases = {
      v = "nvim";
      se = "sudo nvim";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config/";
      nrt = "sudo nixos-rebuild test --flake ~/nixos-config/";
      nrb = "sudo nixos-rebuild boot --flake ~/nixos-config/";
    };

    shellInit = ''
      set fish_greeting
    '';

    functions = {
      fish_prompt = {
        body = ''
          string join "" -- (set_color red) "[" (set_color yellow) $USER (set_color green) "@" (set_color blue) $hostname (set_color magenta) " " $(prompt_pwd) (set_color red) ']' (set_color normal) "\$ "
        '';
        };
      y = {
      body = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
          builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      '';
    };

      };

    # plugins = [
    #   { name = "pure"; src = pkgs.fishPlugins.pure.src; }
    # ];
  };

}
