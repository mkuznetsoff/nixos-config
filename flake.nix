{
  description = "mkuznetsoff's NixOS configuration'";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
    	url = "github:nix-community/nixvim/nixos-25.11";
	    inputs.nixpkgs.follows = "nixpkgs";
    };
    polymc.url = "github:PolyMC/PolyMC";
    hyprland.url = "github:hyprwm/Hyprland";
    stylix.url = "github:danth/stylix";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    hyprpanel = {
      url = "github:Jas-SinghFSU/HyprPanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nix-photogimp = {
    #   url = "github:Libadoxon/nix-photo-gimp";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, ... } @ inputs:
  
  let
    
    system = "x86_64-linux";
    hostname = "nixos";
    user = "mk";
    inherit (self) outputs;

  in {
    nixosConfigurations = {
      "${hostname}" = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs outputs;
          unstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
          };
        };
        modules = [
          ./nixos/configuration.nix
         # inputs.stylix.nixosModules.stylix
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t460s
        ];
      };
    };

    homeConfigurations = {
      "${user}@${hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };      

        extraSpecialArgs = {
          inherit inputs outputs user hostname system;
          unstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
          };
        };
        modules = [
          ./home-manager/home.nix
          inputs.nixvim.homeManagerModules.nixvim
          inputs.stylix.homeManagerModules.stylix
        ];
      };
    };
  };
}
