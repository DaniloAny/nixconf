{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		godot-mono
		vscodium
		rustup
		git
		gcc
		gnumake
		jdk
	];
}
