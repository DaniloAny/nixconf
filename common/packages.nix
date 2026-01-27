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

  # dependencies
  gcc
  gnumake
  jdk

  #graphics packages
  mesa.opencl
  mesa
  vulkan-volk

  # system packages
  inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland
  quickshell
  wayland
  opentabletdriver
  flatpak
  networkmanager
  rofi
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
