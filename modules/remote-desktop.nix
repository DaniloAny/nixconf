{pkgs, config, ... }:
{
  services.tailscale.enable = true;
  environment.systemPackages = with pkgs; [
    rustdesk-flutter #program for accessing remote desktops
  ];

}