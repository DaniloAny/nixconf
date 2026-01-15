{ ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # time zone.
  time.timeZone = "Europe/Belgrade";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  
  system.stateVersion = "25.11"; #it is reccomended this deosnt get touched

  # enables hyprland
  programs.hyprland.enable = true;
  
  #enables flatpaks
  services.flatpak.enable = false;

  # allows "unfree" packages.
  nixpkgs.config.allowUnfree = true;

  #enables flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
