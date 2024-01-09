{
  programs.nixvim = {
    plugins.nvim-tree = {
      enable = true;
      git = {
        enable = true;
        ignore = false;
      };
      diagnostics.enable = true;
      view.float.enable = true;
      updateFocusedFile.enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<F3>";
        action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
        options.desc = "Toggle Tree";
      }
    ];
  };
}