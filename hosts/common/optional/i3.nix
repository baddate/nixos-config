{pkgs, ...}: {
  environment = {
    # # i3block works with this config https://nixos.wiki/wiki/I3#i3blocks
    pathsToLink = [ "/libexec" ]; # links /libexec from derivations to /run/current-system/sw

    # add authentication agent for polkit usage
    systemPackages = [
      pkgs.polkit_gnome
    ];
  };

  services = {
    xserver = {
      enable = true;
      layout = "us";
      xkbVariant = "";
      desktopManager.runXdgAutostartIfNone = true;
      displayManager.lightdm = {
        enable = true;
        greeters.gtk = {
          enable = true;
          cursorTheme = {
            name = "macOS-BigSur";
            package = pkgs.apple-cursor;
          };
          iconTheme = {
            name = "WhiteSur";
            package = pkgs.whitesur-icon-theme;
          };
          theme = {
            name = "WhiteSur-Light";
            package = pkgs.whitesur-gtk-theme;
          };
        };
      };
      excludePackages = with pkgs; [
        xterm
      ];
      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
            i3lock        # default i3 screen locker
            i3status      # provide information to i3bar
            rofi          # application launcher, the same as dmenu
            xautolock     # lock screen after some time
            picom         # transparency and shadows
            feh           # set wallpaper
            xbindkeys     # bind keys to commands
            xorg.xdpyinfo # get screen information
            sysstat       # get system information
            dex           # autostart applications
            imv           # image viewer
        ];
      };
    };
  };
  # fix gvfs doesn't work
  # https://nixos.wiki/wiki/GNOME#Running_GNOME_programs_outside_of_GNOME
  # https://nixos.wiki/wiki/I3#DConf
  programs.dconf.enable = true;
}
