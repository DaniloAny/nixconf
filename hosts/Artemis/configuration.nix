{ inputs, mod, ... }:

{
    imports = [
      ./hardware-configuration.nix
			./devices.nix
      "${mod}/GPU.nix"
      "${mod}./hypr.nix"
		  "${mod}./gnome.nix"
	    "${mod}./dev.nix"
	    "${mod}./gaming.nix"
		  "${mod}./creativity.nix"
	    "${mod}./wine.nix"
		  "${mod}./audio.nix"
		  "${mod}./remote-desktop.nix"
    ];

  networking.hostName = "Artemis";

	system.stateVersion = "25.11"; 
}
