{
  networking = {
    interfaces = {
      wlp5s0 = {
        ipv4.addresses = [{
          address = "192.168.1.89";
          prefixLength = 24;
        }];
        useDHCP = false;

      };
    };
    enableIPv6 = false;
    nameservers = [
      "192.168.1.112"
    ];
    defaultGateway = {
      address = "192.168.1.112";
      interface = "wlp5s0";
    };
    hosts = {
     "101.32.245.203" = [ "git.smj.im" ]; 
    };
  };

}
