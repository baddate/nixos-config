{ config, pkgs, ... }:
{
  services.dunst = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.gnome3.adwaita-icon-theme;
      size = "16x16";
    };
    settings = {
      global = {
        monitor = 0;
        # geometry = "600x50-50+65";
        shrink = "yes";
        transparency = 10;
        padding = 16;
        horizontal_padding = 16;
        font = "JetBrainsMono Nerd Font 10";
        line_height = 4;
        format = ''<b>%s</b>\n%b'';
        frame_color = "#8AADF4";
        separator_color= "#8AADF4";
      };
      urgency_low = {
        background = "#24273A";
        foreground = "#CAD3F5";
        timeout = 3;
      };
      urgency_normal = {
        background = "#24273A";
        foreground = "#CAD3F5";
        timeout = 5;
      };
      urgency_critical = {
        background = "#24273A";
        foreground = "#CAD3F5";
        frame_color = "#F5A97F";
        timeout = 7;
      };
    };
  };
}