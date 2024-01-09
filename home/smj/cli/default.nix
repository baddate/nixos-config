{ pkgs, ... }: {
  imports = [
    ./zoxide.nix
    ./atuin.nix
    ./git.nix
    ./ziptools.nix
  ];
  home.packages = with pkgs; [
    bottom # System viewer
    btop # System viewer
    ncdu # TUI disk usage
    ripgrep # Better grep
    fd # Better find
    jq # JSON pretty printer and manipulator
    timer # To help with my ADHD paralysis
    neofetch # Machine info viewer
  ];
  programs.eza = {
    enable = true;
    enableAliases = true;
  };
}