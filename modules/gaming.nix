{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		osu-lazer-bin
		heroic-unwrapped
		prismlauncher
		oversteer
	];
}
