{ ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = false;
  #boot.loader.efi.canTouchEfiVariables = true;
  #boot.loader.systemd-boot.configurationLimit = 5;

  # time zone.
  time.timeZone = "Europe/Belgrade";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  
  #enables flatpaks
  services.flatpak.enable = true;

  # allows "unfree" packages.
  nixpkgs.config.allowUnfree = true;

  #enables flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
