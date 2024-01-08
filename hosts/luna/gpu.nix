{pkgs, ...}:{
  boot.kernelParams = [
    "quiet"
    "loglevel=3"
    "systemd.show_status=auto"
    "udev.log_level=3"
    "rd.udev.log_level=3"
    "vt.global_cursor_default=0"
    # for video driver
    "amdgpu.ppfeaturemask=0xffff7fff"
    "radeon.cik_support=0"
    "amdgpu.cik_support=1"
  ];

  # video driver config
  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.opengl = {
    driSupport = true; # This is already enabled by default
    driSupport32Bit = true; # For 32 bit applications
    extraPackages = with pkgs; [
      amdvlk
    ];
    # For 32 bit applications
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];
  };
}