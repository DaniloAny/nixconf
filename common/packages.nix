{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [

  # general
  spotify
  w3m
  discord
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default #browser

  # system packages
  wayland
  flatpak
  networkmanager
  mpv
  easyeffects
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
 ];
}
