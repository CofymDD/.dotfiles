{ config, lib, pkgs, ... }: {
  programs = {
    zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        theme = "refined";
        plugins = [
          "git"
        ];
      };
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
    };
  };

  # home.file.".config/" = {
  #   recursive = true;
  #   source = ./config;
  #   target = ".config/";
  # };
}