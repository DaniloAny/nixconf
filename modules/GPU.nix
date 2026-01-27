{ pkgs, ... }:

{
    boot.initrd.kernelModules = [ "amdgpu" ];
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "amdgpu" ];
    systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
    ];
    
    hardware.graphics = {
      enable32Bit = true;
      enable = true;
      extraPackages = with pkgs; [
        mesa.opencl
    ];
  };
  services.lact.enable = true;
  hardware.amdgpu.overdrive.enable = true;
  environment.variables = {
    RUSTICL_ENABLE = "radeonsi";
  };

	systemd.packages = with pkgs; [
		lact
	];

	systemd.services.lactd.wantedBy = ["multi-user.target"];

	environment.systemPackages = with pkgs; [ 
  	mesa.opencl
	  mesa
  	vulkan-volk
	];
}
