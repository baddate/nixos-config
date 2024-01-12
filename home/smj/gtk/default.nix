{ pkgs, ... }: {
  gtk = {
    cursorTheme = {
      name = "macOS-BigSur";
      package = pkgs.apple-cursor;
    };
    enable = true;
    font = {
      name = "DejaVu Sans";
      package = pkgs.dejavu_fonts;
      size = 12;
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
  home.packages = with pkgs; [
    lxappearance
  ];
}