{ ... }:
{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true; 
      nixd = {
        enable = true;
        settings = {
          formatting.command = [ "nixfmt" ];
          nixpkgs.expr = "import (builtins.getFlake \"/home/mk/nix\").inputs.nixpkgs {}";
          options = {
            nixos.expr = "(builtins.getFlake \"/home/mk/nix\").nixosConfigurations.nixos.options";
            home_manager.expr = "(builtins.getFlake \"/home/mk/nix\").nixosConfigurations.mk@nixos.options";
            unstable.expr = "import (builtins.getFlake \"/home/mk/nix\").inputs.nixpkgs-unstable {}";
          };
        };
      };
      pylsp.enable = true;
    };
    
  };
}
