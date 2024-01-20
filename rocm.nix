{ config, pkgs, ... }:

{
  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  environment.systemPackages = with pkgs; [
    ocl-icd
    rocmPackages.clang-ocl
    rocmPackages.clr
    rocmPackages.composable_kernel
    rocmPackages.half
    rocmPackages.hipblas
    rocmPackages.hipcc
    rocmPackages.hip-common
    rocmPackages.hipcub
    rocmPackages.hipfft
    rocmPackages.hipfort
    rocmPackages.hipify
    rocmPackages.hiprand
    rocmPackages.hipsolver
    rocmPackages.hipsparse
    rocmPackages.hsa-amd-aqlprofile-bin
    rocmPackages.llvm.bintools
    rocmPackages.llvm.clang
    rocmPackages.llvm.clang-tools-extra
    rocmPackages.llvm.clang-unwrapped
    rocmPackages.llvm.compiler-rt
    #rocmPackages.llvm.flang
    rocmPackages.llvm.libc
    #rocmPackages.llvm.libclc
    rocmPackages.llvm.libcxx
    rocmPackages.llvm.libcxxabi
    rocmPackages.llvm.libunwind
    rocmPackages.llvm.lld
    rocmPackages.llvm.lldb
    rocmPackages.llvm.llvm
    rocmPackages.llvm.mlir
    rocmPackages.llvm.openmp
    rocmPackages.llvm.polly
    rocmPackages.llvm.pstl
    rocmPackages.llvm.rocmClangStdenv
    #rocmPackages.migraphx
    rocmPackages.miopen
    rocmPackages.miopengemm
    rocmPackages.miopen-hip
    rocmPackages.miopen-opencl
    #rocmPackages.mivisionx
    #rocmPackages.mivisionx-cpu
    #rocmPackages.mivisionx-hip
    #rocmPackages.mivisionx-opencl
    rocmPackages.rccl
    #rocmPackages.rdc
    rocmPackages.rocalution
    rocmPackages.rocblas
    rocmPackages.rocfft
    rocmPackages.rocgdb
    rocmPackages.rocdbgapi
    rocmPackages.rocm-cmake
    rocmPackages.rocm-comgr
    rocmPackages.rocm-core
    rocmPackages.rocm-device-libs
    #rocmPackages.rocm-docs-core
    rocmPackages.rocminfo
    rocmPackages.rocmlir
    rocmPackages.rocmlir-rock
    rocmPackages.rocm-runtime
    rocmPackages.rocm-smi
    rocmPackages.rocm-thunk
    rocmPackages.rocprim
    rocmPackages.rocr-debug-agent
    rocmPackages.rocsolver
    rocmPackages.rocsparse
    rocmPackages.rocthrust
    rocmPackages.roctracer
    rocmPackages.rocwmma
    rocmPackages.rpp
    rocmPackages.rpp-cpu
    rocmPackages.rpp-hip
    rocmPackages.rpp-opencl
    rocmPackages.tensile
  ];
}    
