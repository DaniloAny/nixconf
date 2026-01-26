{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [
  
  # terminal
  ghostty
  ani-cli
  neovim
  fastfetch
  starship
  btop
  yazi
  nmap
  brightnessctl
  redshift

  # dev 
  godot-mono
  vscodium
  rustup
  git

  # gaming
  osu-lazer-bin
  heroic-unwrapped
  prismlauncher
  oversteer

  # general
  spotify
  discord
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default #browser
  krita
  freecad
  davinci-resolve
  blender
  nautilus

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
  

  ##openrgb

  # proton/wine
  protonup-qt
  protontricks

  ];

systemd.packages = with pkgs; [
  lact
];

systemd.services.lactd.wantedBy = ["multi-user.target"];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
 ];

  services.desktopManager.gnome.enable = true;

  # To disable installing GNOME's suite of applications
  # and only be left with GNOME shell.
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs ];
  hardware.new-lg4ff.enable = true;
  hardware.opentabletdriver.enable = true;

}
