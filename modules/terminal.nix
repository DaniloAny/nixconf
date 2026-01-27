{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [ 
		ghostty
		ani-cli
		neovim
		fastfetch
		starship
		btop
		yazi
		nmap
		brightnessctl
		redshift
	];
}
