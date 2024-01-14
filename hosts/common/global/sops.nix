{ inputs, ... }:
{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  sops = {
    age.keyFile = "/home/smj/.config/sops/age/keys.txt";
  };
}
