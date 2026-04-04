{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-gl-host.url = "github:numtide/nix-gl-host";
  };

  outputs =
    {
      self,
      nixpkgs,
      nix-gl-host,
    }:
    let
      system = "x86_64-linux";
      #pkgs = nixpkgs.legacyPackages.${system};
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
        config.cudaSupport = true;
      };
      fhs = pkgs.buildFHSEnv {
        name = "fhs-shell";
        targetPkgs = pkgs: [
          nix-gl-host.defaultPackage.x86_64-linux
          pkgs.uv
          pkgs.python313
          pkgs.zlib
          pkgs.cmake
          pkgs.ninja
          pkgs.gcc
          pkgs.libtool

          # package.meta.badPlatforms
          #pkgs.cudaPackages.autoAddCudaCompatRunpath
          #pkgs.cudaPackages.markForCudatoolkitRootHook
          #pkgs.cudaPackages.removeStubsFromRunpathHook
          #pkgs.cudaPackages.cuda_compat
          #pkgs.cudaPackages.cuda_crt
          #pkgs.cudaPackages.cuda_ctadvisor
          #pkgs.cudaPackages.cuda_culibos
          #pkgs.cudaPackages.libcudla
          #pkgs.cudaPackages.libnvptxcompiler
          #pkgs.cudaPackages.libnvvm
          #pkgs.cudaPackages.nvpl_blas
          #pkgs.cudaPackages.nvpl_common
          #pkgs.cudaPackages.nvpl_fft
          #pkgs.cudaPackages.nvpl_lapack
          #pkgs.cudaPackages.nvpl_rand
          #pkgs.cudaPackages.nvpl_scalapack
          #pkgs.cudaPackages.nvpl_sparse
          #pkgs.cudaPackages.nvpl_tensor

          pkgs.cudaPackages.cudatoolkit
          pkgs.cudaPackages.cuda_cudart
          pkgs.cudaPackages.cuda_cupti
          pkgs.cudaPackages.cuda_nvrtc
          pkgs.cudaPackages.cuda_nvtx
          pkgs.cudaPackages.cudnn
          pkgs.cudaPackages.libcublas
          pkgs.cudaPackages.libcufft
          pkgs.cudaPackages.libcurand
          pkgs.cudaPackages.libcusolver
          pkgs.cudaPackages.libcusparse
          pkgs.cudaPackages.libnvjitlink
          pkgs.cudaPackages.nccl
          pkgs.cudaPackages.backendStdenv
          pkgs.cudaPackages.cuda-samples
          pkgs.cudaPackages.cuda_cccl
          pkgs.cudaPackages.cuda_cudart
          pkgs.cudaPackages.cuda_cuobjdump
          pkgs.cudaPackages.cuda_cupti
          pkgs.cudaPackages.cuda_cuxxfilt
          pkgs.cudaPackages.cuda_demo_suite
          pkgs.cudaPackages.cuda_documentation
          pkgs.cudaPackages.cuda_gdb
          pkgs.cudaPackages.cuda_nsight
          pkgs.cudaPackages.cuda_nvcc
          pkgs.cudaPackages.cuda_nvdisasm
          pkgs.cudaPackages.cuda_nvml_dev
          pkgs.cudaPackages.cuda_nvprof
          pkgs.cudaPackages.cuda_nvprune
          pkgs.cudaPackages.cuda_nvrtc
          pkgs.cudaPackages.cuda_nvtx
          pkgs.cudaPackages.cuda_nvvp
          pkgs.cudaPackages.cuda_opencl
          pkgs.cudaPackages.cuda_profiler_api
          pkgs.cudaPackages.cuda_sanitizer_api
          pkgs.cudaPackages.cudatoolkit
          pkgs.cudaPackages.cudnn
          pkgs.cudaPackages.cudnn-frontend
          pkgs.cudaPackages.cuquantum
          pkgs.cudaPackages.cutlass
          pkgs.cudaPackages.fabricmanager
          pkgs.cudaPackages.gdrcopy
          pkgs.cudaPackages.imex
          pkgs.cudaPackages.libcublas
          pkgs.cudaPackages.libcublasmp
          pkgs.cudaPackages.libcudss
          pkgs.cudaPackages.libcufft
          pkgs.cudaPackages.libcufile
          pkgs.cudaPackages.libcurand
          pkgs.cudaPackages.libcusolver
          pkgs.cudaPackages.libcusolvermp
          pkgs.cudaPackages.libcusparse
          pkgs.cudaPackages.libcusparse_lt
          pkgs.cudaPackages.libcutensor
          pkgs.cudaPackages.libnpp
          pkgs.cudaPackages.libnpp_plus
          pkgs.cudaPackages.libnvfatbin
          pkgs.cudaPackages.libnvjitlink
          pkgs.cudaPackages.libnvjpeg
          pkgs.cudaPackages.libnvjpeg_2k
          pkgs.cudaPackages.libnvshmem
          pkgs.cudaPackages.libnvtiff
          pkgs.cudaPackages.nccl
          pkgs.cudaPackages.nccl-tests
          pkgs.cudaPackages.nsight_compute
          pkgs.cudaPackages.nsight_systems
          pkgs.cudaPackages.nvcomp
          pkgs.cudaPackages.nvidia_fs
          pkgs.cudaPackages.saxpy
          pkgs.cudaPackages.setupCudaHook
          pkgs.cudaPackages.tensorrt
          pkgs.cudaPackages.tensorrt-samples
        ];
      };
    in
    {
      devShells.${system}.default = fhs.env;
    };
}
