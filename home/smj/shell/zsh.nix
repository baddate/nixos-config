{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    history = {
      extended = true;
      save = 20000;
      size = 20000;
    };
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "zoxide"
      ];
    };
  };
}