{
  programs.atuin = {
    enable = true;
    flags = [
      "--disable-up-arrow"
      # "--disable-ctrl-r"
    ];
    settings = {
      auto_sync = true;
      sync_frequency = "10m";
      sync_address = "https://atuin.smj.im";
      search_mode = "prefix";
      common_prefix = ["sudo"];
      enter_accept = true;
    };
  };
}