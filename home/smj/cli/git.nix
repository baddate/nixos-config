{
  programs.git = {
    enable = true;
    userName = "Sanmoji";
    userEmail = "me@smj.im";
    delta = {
      enable = true;
      options = {
        line-numbers = true;
        decorations = {
          commit-decoration-style = "bold yellow box ul";
          file-decoration-style = "none";
          file-style = "bold yellow ul";
        };
        features = "decorations";
        whitespace-error-style = "22 reverse";
      };
    };
    aliases = {
      a = "add --all";

      # ai = add -i
      # ap = add -p

      # b = branch
      # bm = branch --merged
      # bnm = branch --no-merged

      ci = "commit";
      ca = "commit -a";
      cm = "commit -m";
      cam = "commit -am";
      cem = "commit --allow-empty -m";
      cd = "commit --amend";
      cad = "commit -a --amend";
      ced = "commit --allow-empty --amend";
      co = "checkout";
      cob =" checkout -b";
      cp = "cherry-pick";

      # d = diff
      # dc = diff --cached
      # fo = fetch origin;

      g = "grep --line-number";
      l = "log --oneline";
      ll = "log --oneline --graph --decorate";
      lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --";
      lgn = "log -n 15 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --";

      # pl = pull;
      # pb = pull --rebase;

      s = "status";
      sb = "status -s -b";

      # sa = stash apply;
      # sc = stash clear;
      # sd = stash drop;
      # sl = stash list;
      # sp = stash pop;
    };
  };
}
