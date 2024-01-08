{
  services = {
    xserver = {
      enable = true;
      layout = "us";
      xkbVariant = "";
      desktopManager.gnome = {
        enable = true;
      };
      displayManager.gdm = {
        enable = true;
      };
    };
    geoclue2.enable = true;
  };
}