{ ... }:

{
  # Bootloader.
  boot.loader.grub = {
    enable = true;
    useOSProber = true;
    efiSupport = true;
  };
  boot.loader.grub.devices = [
    "nodev"
  ];
  
  boot.loader.efi = {
    efiSysMountPoint = "/boot/efi";
    canTouchEfiVariables = true;
  };

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
  
  #enables flatpaks
  services.flatpak.enable = true;

  # allows "unfree" packages.
  nixpkgs.config.allowUnfree = true;

  #enables flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # enable ly the tui login manager
  services.displayManager.ly.enable = true;


  services.hardware.openrgb.enable = true;

}
