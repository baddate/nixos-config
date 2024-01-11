{
  programs.atuin = {
    enable = true;
    # flags = [
    #   "--disable-up-arrow"
    #   "--disable-ctrl-r"
    # ];
    settings = {
      auto_sync = true;
      sync_frequency = "10m";
      sync_address = "https://atuin.oois.xyz";
      search_mode = "fuzzy";
      common_prefix = ["sudo"];
      enter_accept = true;
    };
  };
  programs.zsh = {
    initExtra = ''
      export ATUIN_NOBIND="true"
      eval "$(atuin init zsh)"
      bindkey '^[[1;5A' _atuin_search_widget
    '';
  };
}