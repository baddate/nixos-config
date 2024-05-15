{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      enableCryptodisk = true;
      useOSProber = false;
      extraEntries = ''
      menuentry 'Windows' --class windows --class os $menuentry_id_option 'osprober-efi-8A74-2073' {
        insmod part_gpt
        insmod fat
        search --no-floppy --fs-uuid --set=root 8A74-2073
        chainloader /efi/Microsoft/Boot/bootmgfw.efi
      }
      '';
    };
    efi.canTouchEfiVariables = true;
  };
}