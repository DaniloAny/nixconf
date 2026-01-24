{ pkgs, config, lib, ... }:

{
    boot.initrd.kernelModules = [ "amdgpu" ];
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "amdgpu" ];
    systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
    ];
    hardware.graphics.enable = true;
    hardware.graphics.extraPackages = with pkgs; [
    amdvlk
    mesa.opencl
    ];
    # For 32 bit applications  
    hardware.graphics.extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];

    hardware.opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
  };
  services.lact.enable = true;
  hardware.amdgpu.overdrive.enable = true;
  environment.variables = {
    RUSTICL_ENABLE = "radeonsi";
  };
}