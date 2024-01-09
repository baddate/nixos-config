{ pkgs, config, ... }:
let ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in
{
  # TODO: Configure your system-wide user settings (groups, etc), add more users as needed.
  users.users = {
    # FIXME: Replace with your username
    smj = {
      # TODO: You can set an initial password for your user.
      # If you do, you can skip setting a root password by passing '--no-root-passwd' to nixos-install.
      # Be sure to change it (using passwd) after rebooting!
      initialPassword = "password";
      shell = pkgs.zsh;
      isNormalUser = true;
      # openssh.authorizedKeys.keys = [
      #   # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      # ];
      # TODO: Be sure to add any other groups you need (such as networkmanager, audio, docker, etc)
      description = "Sanmoji";
      extraGroups = [
        "wheel"
      ] ++ ifTheyExist [
        "networkmanager"
        "mysql"
        "docker"
        "podman"
        "git"
      ];
      packages = with pkgs; [
        firefox
        vscodium
        gittyup
      #  thunderbird
      ];
    };
  };
  programs.zsh.enable = true;
}