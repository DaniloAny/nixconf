{		
  description = "main system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
  };
  

  outputs = { self, nixpkgs, ... }@inputs: 
  let 
    mod = ./modules;
    
  in
  {
		nixosConfigurations.Artemis= nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs mod; };
			modules = [
				./common
				./hosts/Artemis/configuration.nix
			];
		};
  };
}
