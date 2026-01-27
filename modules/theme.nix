{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		adwaita-icon-theme
		papirus-icon-theme
		nwg-look
	];
}
