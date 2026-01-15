{		
  description = "main system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
      zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = { self, nixpkgs, ... }@inputs: 
  {
		nixosConfigurations.Apollo= nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs; };
			modules = [
				./common
				./Apollo/configuration.nix
			];
		};
  };
}
