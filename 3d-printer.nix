{
  config,
  pkgs,
  pkgs-stable,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    pkgs-stable.freecad
    #cura
    orca-slicer
    #prusa-slicer
    #super-slicer-latest
  ];
}
