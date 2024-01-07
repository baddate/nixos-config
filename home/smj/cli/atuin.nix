{
  programs.atuin = {
    enable = true;
    settings = {
      auto_sync = true;
      sync_frequency = "10m";
      sync_address = "https://atuin.smj.im";
      search_mode = "prefix";
    };
  };
}