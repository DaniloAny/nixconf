{pkgs, inputs, config, ... }:
{
  boot.loader = {
    lilime ={
        enable = true;
        maxGenerations = 5;
        resolution = "1920x1080x32";
        efiSupport = true;
    };
  };
}