{
  imports = [
    ../dunst
    ../fcitx5
    ../picom
    ../../gtk
    ../polybar
  ];
  home.file.".config/i3/config".source = ./config;
  home.file.".config/i3/background.jpg".source = ./background.jpg;
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
        showStartupLaunchMessage = false;
      };
    };
  };
  # enable XDG base dir
  xdg.enable = true;
}