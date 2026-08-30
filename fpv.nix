{
  config,
  pkgs,
  # pkgs-stable,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    expresslrs-configurator
    # now a webapp: betaflight-configurator
    inav-configurator
    #broken gyroflow
  ];
}
