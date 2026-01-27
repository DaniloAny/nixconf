{ ... }:

{
    imports = [
        ./hardware-configuration.nix
				../../modules/router.nix
				./devices.nix
    ];

  networking.hostName = "Artemis"; 
}
