{ ... }:

{
    imports = [
        ./hardware-configuration.nix
				../../modules/router.nix
    ];

  networking.hostName = "Artemis"; 
}
