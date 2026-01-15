{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [
  heroic-unwrapped
  gcc
  protonmail-bridge
  thunderbird
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  neovim
  networkmanager
  hyprland
  wayland
  quickshell
  ghostty
  rofi
  ani-cli
  vscodium
  nwg-look
  fastfetch
  adwaita-icon-theme
  git
  flatpak
  discord
  spotify
  hyprshot
  mpv
  discord
  starship
  krita
  yazi
  btop
  rustup
  opentabletdriver
  steam
  gnumake
  mesa
  vulkan-volk
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
 ];
}
