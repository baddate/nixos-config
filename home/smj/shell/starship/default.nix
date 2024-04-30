{
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;
      format = ''
        [┌───────────────────](bold green)
        [│](bold green)$os$username$directory$git_branch$git_status$git_state$package
        [└─](bold green)
      '';

      right_format = "$time$all$character";

      continuation_prompt = "▶▶ ";

      scan_timeout = 10;

      add_newline = false;

      palette = "catppuccin_macchiato";

      character = {
        success_symbol = " [[♥](green)](green)";
        error_symbol = " [](red)";
        vimcmd_symbol = " [❮](green)";
      };

      palettes = {
        catppuccin_macchiato = {
          rosewater = "#f4dbd6";
          flamingo = "#f0c6c6";
          pink = "#f5bde6";
          mauve = "#c6a0f6";
          red = "#ed8796";
          maroon = "#ee99a0";
          peach = "#f5a97f";
          yellow = "#eed49f";
          green = "#a6da95";
          teal = "#8bd5ca";
          sky = "#91d7e3";
          sapphire = "#7dc4e4";
          blue = "#8aadf4";
          lavender = "#b7bdf8";
          text = "#cad3f5";
          subtext1 = "#b8c0e0";
          subtext0 = "#a5adcb";
          overlay2 = "#939ab7";
          overlay1 = "#8087a2";
          overlay0 = "#6e738d";
          surface2 = "#5b6078";
          surface1 = "#494d64";
          surface0 = "#363a4f";
          base = "#24273a";
          mantle = "#1e2030";
          crust = "#181926";
        };
      };

      time = {
        disabled = false;
        format = "[󱑎](sky) [ $time](sky) ";
        time_format = "%T";
        utc_time_offset = "+8";
      };

      sudo = {
        style = "bold green";
        symbol = "󰌆 ";
        disabled = false;
      };

      username = {
        style_user = "white bold";
        style_root = "black bold";
        format = " [$user]($style) ";
        disabled = false;
        show_always = true;
      };

      cmd_duration = {
        format = "[󱦟 $duration]($style)";
      };

      git_branch = {
        format = "[$symbol$branch ]($style)";
        symbol = " ";
      };
      git_metrics = {
        added_style = "bold green";
        deleted_style = "bold red";
        only_nonzero_diffs = true;
        format = "([+$added]($added_style) )([-$deleted]($deleted_style) )";
        disabled = false;
      };
      git_status = {
        format = "[$all_status $ahead_behind]($style)";
        untracked = "[?](maroon)";
        stashed = "[$](peach)";
        modified = "[!](yellow)";
        staged = "[++($count)](teal)";
        up_to_date = "[✓](bold green)";
        deleted = "[✘](pink)";
        renamed = "[»](sky)";
        ahead = "[󰁞 $count](green)";
        behind = "[󰁆 $count](peach)";
        conflicted = "[󰦎](red)";
      };

      git_state = {
        format = "[($state( $progress_current of $progress_total))]($style) ";
      };

      os = {
        disabled = false;
      };

      aws = {
        symbol = "  ";
      };

      buf = {
        symbol = " ";
      };

      c = {
        symbol = " ";
      };

      conda = {
        symbol = " ";
      };

      crystal = {
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      directory = {
        read_only = " 󰌾";
        format = "󰝰 [$path]($style)[$read_only]($read_only_style) ";
        truncation_length = 4;
        style = "bold lavender";
        read_only_style = "bold red";
      };

      docker_context = {
        symbol = " ";
      };

      elixir = {
        symbol = " ";
      };

      elm = {
        symbol = " ";
      };

      fennel = {
        symbol = " ";
      };

      fossil_branch = {
        symbol = " ";
      };

      golang = {
        symbol = " ";
      };

      guix_shell = {
        symbol = " ";
      };

      haskell = {
        symbol = " ";
      };

      haxe = {
        symbol = " ";
      };

      hg_branch = {
        symbol = " ";
      };

      hostname = {
        ssh_symbol = " ";
      };

      java = {
        symbol = " ";
      };

      julia = {
        symbol = " ";
      };

      kotlin = {
        symbol = " ";
      };

      lua = {
        symbol = " ";
      };

      memory_usage = {
        symbol = "󰍛 ";
      };

      meson = {
        symbol = "󰔷 ";
      };

      nim = {
        symbol = "󰆥 ";
      };

      nix_shell = {
        symbol = " ";
      };

      nodejs = {
        symbol = " ";
      };

      ocaml = {
        symbol = " ";
      };

      os = {
        symbols = {
          Alpaquita = " ";
          Alpine = " ";
          Amazon = " ";
          Android = " ";
          Arch = " ";
          Artix = " ";
          CentOS = " ";
          Debian = " ";
          DragonFly = " ";
          Emscripten = " ";
          EndeavourOS = " ";
          Fedora = " ";
          FreeBSD = " ";
          Garuda = "󰛓 ";
          Gentoo = " ";
          HardenedBSD = "󰞌 ";
          Illumos = "󰈸 ";
          Linux = " ";
          Mabox = " ";
          Macos = " ";
          Manjaro = " ";
          Mariner = " ";
          MidnightBSD = " ";
          Mint = " ";
          NetBSD = " ";
          NixOS = " ";
          OpenBSD = "󰈺 ";
          openSUSE = " ";
          OracleLinux = "󰌷 ";
          Pop = " ";
          Raspbian = " ";
          Redhat = " ";
          RedHatEnterprise = " ";
          Redox = "󰀘 ";
          Solus = "󰠳 ";
          SUSE = " ";
          Ubuntu = " ";
          Unknown = " ";
          Windows = "󰍲 ";
        };
      };

      package = {
        symbol = "󰏗 ";
      };

      perl = {
        symbol = " ";
      };

      php = {
        symbol = " ";
      };

      pijul_channel = {
        symbol = " ";
      };

      python = {
        symbol = " ";
      };

      rlang = {
        symbol = "󰟔 ";
      };

      ruby = {
        symbol = " ";
      };

      rust = {
        symbol = " ";
      };

      scala = {
        symbol = " ";
      };

      swift = {
        symbol = " ";
      };

      zig = {
        symbol = " ";
      };

      # package.disabled = true;
    };
  };
}