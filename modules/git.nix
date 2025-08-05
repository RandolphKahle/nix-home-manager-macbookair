{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Randolph Kahle";
    userEmail = "randy@kahle.org";
  };
}

