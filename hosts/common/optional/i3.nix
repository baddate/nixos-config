{pkgs, ...}: {
  imports = [
    ./thunar.nix
  ];
  services = {
    xserver = {
      enable = true;
      layout = "us";
      xkbVariant = "";
      desktopManager.runXdgAutostartIfNone = true;
      displayManager.lightdm = {
        enable = true;
      };
      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
          i3            # i3
          i3blocks      # status bar
          i3lock        # default i3 screen locker
          i3status      # provide information to i3bar
          rofi          # application launcher, the same as dmenu
          dunst         # notification daemon
          xautolock     # lock screen after some time
          picom         # transparency and shadows
          feh           # set wallpaper
          xbindkeys     # bind keys to commands
          xorg.xdpyinfo # get screen information
          sysstat       # get system information
      ];
      };
    };
  };
}