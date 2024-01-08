{
  imports = [
    ../dunst
    ../fcitx5
    ../picom
  ];
  home.file.".config/i3/config".source = ./config;
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