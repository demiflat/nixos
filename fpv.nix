{
  config,
  pkgs,
  pkgs-stable,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    expresslrs-configurator
    betaflight-configurator
    inav-configurator
    #broken gyroflow
  ];
}
