{
  config,
  pkgs,
  ...
}: {
  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  environment.systemPackages = with pkgs; [
    rocmPackages.hip-common
    rocmPackages.hipblas
    rocmPackages.hipcc
    rocmPackages.hipcub
    rocmPackages.hipfft
    rocmPackages.hipfort
    rocmPackages.hipify
    rocmPackages.hiprand
    rocmPackages.hipsolver
    rocmPackages.hipsparse
    #rocmPackages.miopen-hip
    #rocmPackages.mivisionx-hip
    rocmPackages.rpp-hip
    #    rocmPackages_5.hip-common
    #    rocmPackages_5.hipblas
    #    rocmPackages_5.hipcc
    #    rocmPackages_5.hipcub
    #    rocmPackages_5.hipfft
    #    rocmPackages_5.hipfort
    #    rocmPackages_5.hipify
    #    rocmPackages_5.hiprand
    #    rocmPackages_5.hipsolver
    #    rocmPackages_5.hipsparse
    #    rocmPackages_5.miopen-hip
    #    rocmPackages_5.mivisionx-hip
    #    rocmPackages_5.rpp-hip
    #    rocmPackages_6.hip-common
    #    rocmPackages_6.hipblas
    #    rocmPackages_6.hipcc
    #    rocmPackages_6.hipcub
    #    rocmPackages_6.hipfft
    #    rocmPackages_6.hipfort
    #    rocmPackages_6.hipify
    #    rocmPackages_6.hiprand
    #    rocmPackages_6.hipsolver
    #    rocmPackages_6.hipsparse
    #    rocmPackages_6.miopen-hip
    #    rocmPackages_6.mivisionx-hip
    #    rocmPackages_6.rpp-hip
  ];
}
