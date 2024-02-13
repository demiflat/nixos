{ config, pkgs, ... }:

{
  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  environment.systemPackages = with pkgs; [
    ocl-icd
    python311Packages.pysigset
    python311Packages.torchWithRocm
#    python312Packages.procmon-parser
#    python312Packages.pysigset
#    python312Packages.torchWithRocm    
    rocm-opencl-icd
    rocm-opencl-runtime
    rocmPackages.clang-ocl
    rocmPackages.clr
    rocmPackages.composable_kernel
    rocmPackages.half
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
    rocmPackages.hsa-amd-aqlprofile-bin
    rocmPackages.llvm.bintools
    rocmPackages.llvm.clang
    rocmPackages.llvm.clang-tools-extra
    rocmPackages.llvm.clang-unwrapped
    rocmPackages.llvm.compiler-rt
#    rocmPackages.llvm.flang
    rocmPackages.llvm.libc
#    rocmPackages.llvm.libclc
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
    rocmPackages.migraphx
    rocmPackages.miopen
    rocmPackages.miopen-hip
    rocmPackages.miopen-opencl
    rocmPackages.miopengemm
    rocmPackages.mivisionx
#    rocmPackages.mivisionx-cpu
#    rocmPackages.mivisionx-hip
#    rocmPackages.mivisionx-opencl
    rocmPackages.rccl
#    rocmPackages.rdc
    rocmPackages.rocalution
    rocmPackages.rocblas
    rocmPackages.rocdbgapi
    rocmPackages.rocfft
    rocmPackages.rocgdb
    rocmPackages.rocm-cmake
    rocmPackages.rocm-comgr
    rocmPackages.rocm-core
    rocmPackages.rocm-device-libs
    rocmPackages.rocm-docs-core
    rocmPackages.rocm-runtime
    rocmPackages.rocm-smi
    rocmPackages.rocm-thunk
    rocmPackages.rocminfo
    rocmPackages.rocmlir
    rocmPackages.rocmlir-rock
    rocmPackages.rocprim
    rocmPackages.rocprofiler
    rocmPackages.rocr-debug-agent
    rocmPackages.rocrand
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
