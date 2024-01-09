{
  # Be sure to also allow home-manager to manage your shell with programs.<your_shell>.enable = true.
  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };
  };
}