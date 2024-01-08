{
  pkgs,
  ...
}: {
  services.dunst.enable = true;

  # 直接从当前文件夹中读取配置文件作为配置内容
  home.file."$XDG_CONFIG_HOME/dunst/dunstrc".source = ./dunstrc;
}