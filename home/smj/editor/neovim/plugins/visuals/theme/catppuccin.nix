{
  programs.nixvim = {
    colorschemes.catppuccin = {
      enable = true;
      integrations = {
        telescope = {
          enabled = true;
        };
      };
    };
  };
}