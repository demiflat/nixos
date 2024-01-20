{ config, pkgs, ... }:

{
  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  environment.systemPackages = with pkgs; [
    rocmPackages.rocmlir
    rocmPackages.rocminfo
    rocmPackages.rocm-core
    rocmPackages.rocm-thunk
    rocmPackages.rocm-comgr
    rocmPackages.rocm-cmake
    rocmPackages.rocmlir-rock
    rocmPackages.rocm-runtime
    #rocmPackages.rocm-docs-core
    rocmPackages.rocm-device-libs
    rocmPackages.llvm.rocmClangStdenv
    rocmPackages.llvm.pstl
    rocmPackages.llvm.polly
    rocmPackages.llvm.openmp
    rocmPackages.llvm.mlir
    rocmPackages.llvm.llvm
    rocmPackages.llvm.lldb
    rocmPackages.llvm.lld
    rocmPackages.llvm.libunwind
    rocmPackages.llvm.libcxxabi
    rocmPackages.llvm.libcxx
    rocmPackages.llvm.libc
    rocmPackages.llvm.compiler-rt
    rocmPackages.llvm.clang-tools-extra
    rocmPackages.llvm.clang
    rocmPackages.llvm.bintools
    rocmPackages.rocsparse
    rocmPackages.rocsolver
    rocmPackages.rocprim
    rocmPackages.rocalution
    rocmPackages.rccl
    rocmPackages.miopen
    rocmPackages.miopengemm
    rocmPackages.hipsparse
    rocmPackages.hipsolver
    rocmPackages.hipblas
    rocmPackages.rocgdb
  ];
}    
