{
  programs.nixvim = {
    plugins.toggleterm = {
      enable = true;
      size = ''
      function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end
      '';
    };
    keymaps = [
      {
        mode = [ "n" "t" "i" ];
        key = "<A-h>";
        action = "<Cmd>:ToggleTerm direction=horizontal<CR>";
        options.desc = "Toggle Terminal";
      }
      {
        mode = [ "n" "t" "i" ];
        key = "<A-i>";
        action = "<Cmd>:ToggleTerm direction=float<CR>";
        options.desc = "Toggle Terminal";
      }
      {
        mode = [ "n" "t" "i" ];
        key = "<A-v>";
        action = "<Cmd>:ToggleTerm direction=vertical<CR>";
        options.desc = "Toggle Terminal";
      }
    ];
  };
}