{
  # Configuration options for LUKS Device
  boot.initrd.luks.devices = {
    crypted = {
      device = "/dev/disk/by-partuuid/10931791-d04f-4078-ab9c-2e954ee9b925";
      header = "/dev/disk/by-partuuid/cf4678e8-c206-4748-8db4-0a5b510bb3c9";
      allowDiscards = true; # Used if primary device is a SSD
      preLVM = true;
    };
  };
}