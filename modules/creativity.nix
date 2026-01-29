{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		krita
		freecad
		davinci-resolve
		blender
		obs-studio
	];
}

