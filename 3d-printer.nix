{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    freecad
    #cura
    orca-slicer
    #prusa-slicer
    #super-slicer-latest
  ];
}
