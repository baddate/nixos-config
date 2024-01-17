{pkgs, ...}:{
  home.packages = [ pkgs.nb ];
  home.file.".nbrc".source = ./nbrc;
}