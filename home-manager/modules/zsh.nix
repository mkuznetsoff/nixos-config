{...}: {
  
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    #promptInit = ''PS1="%{$fg[blue]%}%~"$'\n'"%B%{$fg[green]%}λ %{$reset_color%}%b"'';
    initExtra = ''
        autoload -U colors && colors
        PS1="%{$fg[blue]%}%~"$'\n'"%B%{$fg[green]%}λ %{$reset_color%}%b" 
    '';
    
    shellAliases = {
      l = "ls -la";
      v = "nvim";
      se = "sudo nvim";
      nrs = "sudo nixos-rebuild switch --flake ~/nix/";
      nrt = "sudo nixos-rebuild test --flake ~/nix/";
      nrb = "sudo nixos-rebuild boot --flake ~/nix/";
    };
    
    
  };
}
