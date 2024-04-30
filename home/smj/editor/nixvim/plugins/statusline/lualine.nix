{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      componentSeparators = {
        left = "";
        right = "";
      };
      sectionSeparators = {
        left = "";
        right = "";
      };
      sections = {
        lualine_c = [
          {
            name = "filename";
            extraConfig = {
              path = 1;
            };
          }
        ];
      };

      theme = let
        colors = {
          aqua = "#8bd5ca";
          black = "#181926";
          blue = "#8aadf4";
          darkgray = "#6e738d";
          gray = "#8087a2";
          green = "#a6da95";
          inactivegray = "#939ab7";
          lightgray = "#a5adcb";
          red = "#ed8796";
          transparent = "none";
          white = "#cad3f5";
          yellow = "#f5bde6";
        };
      in {
        normal = {
          a = {
            bg = colors.transparent;
            fg = colors.white;
            gui = "bold";
          };
          b = {
            bg = colors.transparent;
            fg = colors.yellow;
          };
          c = {
            bg = colors.transparent;
            fg = colors.gray;
          };
        };
      };
    };
  };
}
