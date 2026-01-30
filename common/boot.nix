{pkgs, inputs, config, ... }:
{
  boot.loader = {
    limine ={
        enable = true;
        maxGenerations = 5;
        efiSupport = true;
    };
  };
}