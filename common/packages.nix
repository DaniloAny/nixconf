{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [

  # general
  spotify
  discord
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default #browser

  # themeing and icons
  adwaita-icon-theme
  papirus-icon-theme
  nwg-look

  # system packages
  wayland
  opentabletdriver
  flatpak
  networkmanager
  mpv
  easyeffects
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
 ];

  hardware.new-lg4ff.enable = true;
  hardware.opentabletdriver.enable = true;
}
