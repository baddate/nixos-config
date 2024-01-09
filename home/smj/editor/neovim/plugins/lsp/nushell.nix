{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-nu
    ];
    extraConfigLua = ''
      require('nu').setup{}
    '';
  };
}
