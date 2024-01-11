{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;

    settings = {
      window = {
        # title = "Terminal";

        opacity = 0.3;
        padding = { y = 5; };
        # dimensions = {
        #   lines = 75;
        #   columns = 100;
        # };
      };

      font = {
        normal.family = "GeistMono Nerd Font";
        size = 12.0;
      };


      shell = { program = "${pkgs.zsh}/bin/zsh"; };

      colors = {
        primary = {
          background = "#24273A";
          foreground = "#CAD3F5";
          dim_foreground = "#CAD3F5";
          bright_foreground = "#CAD3F5";
        };
        cursor = {
          text = "#24273A";
          cursor = "#F4DBD6";
        };
        selection = {
          text = "#24273A";
          background = "#F4DBD6";
        };
        normal = {
          black = "#494D64";
          red = "#ED8796";
          green = "#A6DA95";
          yellow = "#EED49F";
          blue = "#8AADF4";
          magenta = "#F5BDE6";
          cyan = "#8BD5CA";
          white = "#B8C0E0";
        };
        bright = {
          black = "#5B6078";
          red = "#ED8796";
          green = "#A6DA95";
          yellow = "#EED49F";
          blue = "#8AADF4";
          magenta = "#F5BDE6";
          cyan = "#8BD5CA";
          white = "#A5ADCB";
        };
        dim = {
          black = "#494D64";
          red = "#ED8796";
          green = "#A6DA95";
          yellow = "#EED49F";
          blue = "#8AADF4";
          magenta = "#F5BDE6";
          cyan = "#8BD5CA";
          white = "#B8C0E0";
        };
        indexed_colors = [
          {
            index = 16;
            color = "#F5A97F";
          }
          {
            index = 17;
            color = "#F4DBD6";
          }
        ];
        transparent_background_colors = true;
      };
    };
  };
}