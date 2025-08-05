{ config, pkgs, ... }: {
  programs.zsh = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
    };
  };
}

