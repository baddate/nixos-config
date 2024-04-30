{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      enableCryptodisk = true;
      useOSProber = true;
    };
    efi.canTouchEfiVariables = true;
  };
}