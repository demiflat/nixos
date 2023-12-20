{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    amd-blis
    amdctl
    amdgpu_top
    amdvlk
    appimage-run
    aria2
    b612
    bat
    bc
    brasero
    btop
    buildah
    cargo
    cfssl
    chromium
    clinfo
    clolcat
    colordiff
    cri-o
    cri-tools
    criu
    crun
    ddcutil
    debootstrap
    delta
    diffuse
    difftastic
    dig
    dina-font
    doublecmd
    duf
    envsubst
    eternal-terminal
    evtest
    fastgron
    fd
    ffmpeg_6-full
    figlet
    file
    firefox
    fish
    fnm
    font-awesome
    foot
    fortune
    fzf
    gdu
    gitFull
    git-repo
    gitAndTools.git-extras
    git-repo-updater
    glow
    gnome.gedit
    gnome.gnome-tweaks
    gnome.simple-scan
#go
    go
    gopls
    delve
    gomodifytags
    impl
    gotests
    go-tools
    golangci-lint
    golangci-lint-langserver

    gomi
    gossa
    gotty
    graphviz
    # gron
    gvproxy
    hack-font
    htop
# hyprland
    hypr
    hyprland
    hyprpaper
    hyprland-protocols
    hyprpicker
    hyprshade
    xdg-desktop-portal-hyprland

    imagemagick
#    input-remapper
    iotop
    iperf3
    iproute2
    jc
    jq
    jql
    # jupyter
    killall
    kitty
    koreader
    kubebuilder
    kubecolor
    kubectl
    kubectl-tree
    kubectx
    kubernetes
    kubetail
    kubevirt
    lazygit
    lego
    librewolf-wayland
    libreoffice-fresh
    libvirt
    light
    links2
    litestream
    logitech-udev-rules
    lsd
    ltunify
    luajit
    mako
    maven
    mc
    meld
    microcodeAmd
    most
    mpv
    neovim
    nerdfonts
    # netbird-ui
    nettools
    nfs-utils
    nftables
    nil
    nix-top
    nixos-option
    nmap
    nodejs_20
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji
    noto-fonts-extra
    nushell
    nrfutil
    openocd
    openssl
    openvswitch
    p7zip
    pass
    perf-tools
    platformio
    platformio-core
    podman
    podman-compose
    podman-tui
    profont
    pstree
    pv
    pwgen

    # python311Full
    # python311Packages.setuptools
    # python311Packages.pip
    # python311Packages.pyserial
    # python312Full
    # python312Packages.setuptools
    # python312Packages.pip
    # python312Packages.pyserial
    # esphome
    # platformio
    # openocd

    # broken
    # python312Packages.pip
    # python312Packages.python
    # ml:
    # python310Packages.venvShellHook
    # python310Packages.numpy
    # python310Packages.requests
    # python310Packages.pre-commit-hooks
    # python310Packages.pandas
    # python310Packages.matplotlib
    # python310Packages.seaborn
    # python310Packages.kaggle
    # python310Packages.tqdm
    # python310Packages.wandb
    # python310Packages.scikit-learn
    # python310Packages.xgboost
    # python310Packages.lightgbm
    # python310Packages.catboost
    # python310Packages.tensorboard
    # python310Packages.torchWithRocm
    # python310Packages.torchvision
    # python310Packages.torchaudio
    # python310Packages.jupyter
    # python310Packages.jupyter-core    
    # python310Packages.notebook
    # python310Packages.ipykernel
    # streamlit
    # taglib
    # openssl
    # libxml2
    # libxslt
    # libzip
    # zlib

    pywal
    qemu
    qmk-udev-rules
    qrencode
    rename
    rgp
    ripgrep
    # rocm
    # rocmPackages.rocmlir
    # rocmPackages.rocminfo
    # rocmPackages.rocm-core
    # rocmPackages.rocm-thunk
    # rocmPackages.rocm-comgr
    # rocmPackages.rocm-cmake
    # rocmPackages.rocmlir-rock
    # rocmPackages.rocm-runtime
    # rocmPackages.rocm-docs-core
    # rocmPackages.rocm-device-libs
    # rocmPackages.llvm.rocmClangStdenv
    # rocmPackages.llvm.pstl
    # rocmPackages.llvm.polly
    # rocmPackages.llvm.openmp
    # rocmPackages.llvm.mlir
    # rocmPackages.llvm.llvm
    # rocmPackages.llvm.lldb
    # rocmPackages.llvm.lld
    # rocmPackages.llvm.libunwind
    # rocmPackages.llvm.libcxxabi
    # rocmPackages.llvm.libcxx
    # rocmPackages.llvm.libc
    # rocmPackages.llvm.compiler-rt
    # rocmPackages.llvm.clang-tools-extra
    # rocmPackages.llvm.clang
    # rocmPackages.llvm.bintools
    # rocmPackages.rocsparse
    # rocmPackages.rocsolver
    # rocmPackages.rocprim
    # rocmPackages.rocalution
    # rocmPackages.rccl
    # rocmPackages.miopen
    # rocmPackages.miopengemm
    # rocmPackages.hipsparse
    # rocmPackages.hipsolver
    # rocmPackages.hipblas
    # rocmPackages.rocgdb
    # end rocm
    rofi
    runc
    rustc
    rustup
    skopeo
    socat
    spacevim
    sqlite
    strace
    sudo-font
    sway
    taskwarrior
    teensy-udev-rules
    tmux
    tockloader
    tig
    tpmmanager
    tpm2-tools
    transmission
    transmission-gtk
    tree
    tree-sitter
    tree-sitter-grammars.tree-sitter-bash
    tree-sitter-grammars.tree-sitter-c
    tree-sitter-grammars.tree-sitter-cpp
    tree-sitter-grammars.tree-sitter-dot
    tree-sitter-grammars.tree-sitter-fish
    tree-sitter-grammars.tree-sitter-go
    tree-sitter-grammars.tree-sitter-html
    tree-sitter-grammars.tree-sitter-http
    tree-sitter-grammars.tree-sitter-java
    tree-sitter-grammars.tree-sitter-json
    tree-sitter-grammars.tree-sitter-llvm
    tree-sitter-grammars.tree-sitter-lua
    tree-sitter-grammars.tree-sitter-make
    tree-sitter-grammars.tree-sitter-nix
    tree-sitter-grammars.tree-sitter-rust
    tree-sitter-grammars.tree-sitter-sql
    tree-sitter-grammars.tree-sitter-toml
    tree-sitter-grammars.tree-sitter-vim
    tree-sitter-grammars.tree-sitter-yaml
    tree-sitter-grammars.tree-sitter-zig
    treesheets
    unzip
    unpaper
    unrar
    usbtop
    usbutils
    ustreamer
    via
    vimPlugins.nvim-treesitter.withAllGrammars
    vimPlugins.SpaceVim
    virt-manager
    virt-top
    virtiofsd
    vit
    vscodium
#    (vscode-with-extensions.override {
#      vscode = vscodium;
#      vscodeExtensions = with vscode-extensions; [
#        ms-vscode.cpptools
#      ];
#    })
    w3m
    watch
    waybar
    wdisplays
#    webex
    wezterm
    wget
    wireguard-tools
    wl-clipboard
    wlsunset
    wofi
    wpgtk
    wshowkeys
    xkcd-font
    xkcdpass
    yarn
    zathura
    zenmonitor
    yt-dlp
    zip
    zstd
  ];
}
