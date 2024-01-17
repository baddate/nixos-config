{lib, pkgs, ...}:{
  home.packages = with pkgs; [
    meslo-lgs-nf
  ];
  # # Enable zsh completion. Don't forget to add
  # environment.pathsToLink = [ "/share/zsh" ];
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = false;
    history = {
      extended = true;
      save = 200000;
      size = 200000;
    };

    initExtraFirst = ''
      # fast-syntax-highlighting config
      # export FAST_WORK_DIR=XDG;

      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#1e2030,bg=cyan,bold,underline"

      ZSH_HIGHLIGHT_HIGHLIGHTERS+=(main brackets pattern cursor)
      # To define styles for nested brackets up to level 4
      ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
      ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
      ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
      ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'
      ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
    '';
    # SHA Mismatch during manual plugin installation
    # If manual plugin installation fails with SHA mismatch,
    # generating a valid hash as part of the error message
    # can be achieved by temporarily switching to:
    # sha256 = lib.fakeSha256;
    plugins = [
      # {
      #   # will source zsh-autosuggestions.plugin.zsh
      #   name = "zsh-autosuggestions";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "zsh-users";
      #     repo = "zsh-autosuggestions";
      #     rev = "v0.7.0";
      #     sha256 = "KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
      #   };
      # }
      # {
      #   name = "fast-syntax-highlighting";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "zdharma-continuum";
      #     repo = "fast-syntax-highlighting";
      #     rev = "v1.55";
      #     sha256 = "DWVFBoICroKaKgByLmDEo4O+xo6eA8YO792g8t8R7kA=";
      #   };
      # }
      {
        name = "zsh-autocomplete";
        src = pkgs.fetchFromGitHub {
          owner = "marlonrichert";
          repo = "zsh-autocomplete";
          rev = "23.07.13";
          sha256 = "0NW0TI//qFpUA2Hdx6NaYdQIIUpRSd0Y4NhwBbdssCs=";
        };
      }
      {
      # refer: https://github.com/NixOS/nixpkgs/issues/154696#issuecomment-1238433989
        # A prompt will appear the first time to configure it properly
        # make sure to select MesloLGS NF as the font in Konsole
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      # https://discourse.nixos.org/t/using-an-external-oh-my-zsh-theme-with-zsh-in-nix/6142/8
      {
        name = "powerlevel10k-config";
        src = lib.cleanSource ./p10k-config;
        file = "p10k.zsh";
      }
    ];
    # initExtra = ''
    # '';
  };
}
