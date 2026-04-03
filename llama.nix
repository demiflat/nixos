{
  config,
  pkgs,
  llama-cpp,
  ...
}:
{
  config.cudaSupport = true;
  #  nixpkgs.config.packageOverrides = pkgs: {
  #  llama-cpp =
  #    (builtins.getFlake "github:ggerganov/llama.cpp").packages.${builtins.currentSystem}.default;
  #};

  environment.systemPackages = with pkgs; [
    llama-cpp.llama-cpp
  ];
}
