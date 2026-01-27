{ pkgs, ... }:

{
	imports = [
		./terminal.nix
		./theme.nix
	];

	services.displayManager.ly.enable = true;

	services.desktopManager.gnome.enable = true;

	services.gnome.core-apps.enable = false;
	services.gnome.core-developer-tools.enable = false;
	services.gnome.games.enable = false;
	environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs ];
}
