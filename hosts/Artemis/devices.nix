{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		opentabletdriver
	];

	hardware.new-lg4ff.enable = true;
	hardware.opentabletdriver.enable = true;
}
