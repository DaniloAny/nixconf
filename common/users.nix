{ pkgs, ... }:

{
   users.users.danilo = {
    isNormalUser = true;
    description = "Main user";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    shell = pkgs.fish;
  };
  
  # enable the fish shell
  programs.fish.enable = true;
}

