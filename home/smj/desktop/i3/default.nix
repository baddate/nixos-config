{
  imports = [
    ../dunst
  ];
  home.file.".config/i3/config".source = ./config;
  services.flameshot = {
    enable = true;
  };
}