{
  description = "Home Manager flake for randolph";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, ... }:
    {
      homeConfigurations.randolph = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "aarch64-darwin";
          config.allowUnfree = true;
        };

        modules = [
          ./home.nix
        ];
      };
    };
}

