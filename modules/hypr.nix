{ inputs, pkgs, ... }: 
{
	imports = [
		./terminal.nix
		./theme.nix
	];

	services.displayManager.ly.enable = true;

  programs.hyprland = {
    enable = true;
    # set the flake package
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

	environment.systemPackages = with pkgs; [
		quickshell
		rofi
		hyprshot
		inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland
	];
}
