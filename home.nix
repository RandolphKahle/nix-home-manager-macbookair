{ config, pkgs, ... }:

{
  home.username = "randolph";
  home.homeDirectory = "/Users/randolph";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    htop
  ];

  imports = [
    ./modules/git.nix
    ./modules/zsh.nix
  ];

}

