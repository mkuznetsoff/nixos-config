{
  description = "mkuznetsoff's NixOS configuration'";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
    nixvim = {
    	url = "github:nix-community/nixvim/nixos-25.05";
	    inputs.nixpkgs.follows = "nixpkgs";
    };
    polymc.url = "github:PolyMC/PolyMC";
    nixgl.url = "github:nix-community/nixGL";
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    stylix.url = "github:danth/stylix/release-25.05";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, nixgl, ... } @ inputs:
  
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
          inputs.stylix.nixosModules.stylix
          inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t460s
        ];
      };
    };

    homeConfigurations = {
      "${user}@${hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ nixgl.overlay ];
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
           inputs.plasma-manager.homeManagerModules.plasma-manager
          inputs.nixvim.homeManagerModules.nixvim
        ];
      };
    };
  };
}
