{ inputs, mod, ... }:

{
    imports = [
        ./hardware-configuration.nix
				"${mod}/default.nix"
				./devices.nix
    ];

  networking.hostName = "Artemis";

	system.stateVersion = "25.11"; 
}
