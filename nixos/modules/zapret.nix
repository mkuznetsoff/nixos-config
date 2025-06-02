{ pkgs, ... }: {

users.users.tpws = {
  isSystemUser = true;
  group = "tpws";
};

users.groups.tpws = {};

systemd.services.zapret = {
  after = [ "network-online.target" ];
  wants = [ "network-online.target" ];
  wantedBy = [ "multi-user.target" ];
  
  path = with pkgs; [
    iptables
    nftables
    gawk
  ];
  
  serviceConfig = {
    Type = "forking";
    Restart = "no";
    TimeoutSec = "30sec";
    IgnoreSIGPIPE = "no";
    KillMode = "none";
    GuessMainPID = "no";
    ExecStart = "${pkgs.zapret}/bin/zapret start";
    ExecStop = "${pkgs.zapret}/bin/zapret stop";
    
    EnvironmentFile = pkgs.writeText "zapret-environment" ''
      MODE="tpws"
      # и прочая конфигурация которую можно получить с помощью nix-shell -p zapret --run blockcheck
    '';
  };
};

}
