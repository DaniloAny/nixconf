{pkgs, inputs, config, mod, ... }:
{
  boot.loader = {
    limine ={
        enable = true;
        maxGenerations = 5;
        efiSupport = true;
        style = {
          wallpapers = [
            "${mod}/wallpapers/wallhaven-o5ky29.png"
          ];
        };
    };
  };
}