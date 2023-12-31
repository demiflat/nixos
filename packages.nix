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
    graphviz
    gron
    gvproxy
    hack-font
    htop
    imagemagick
#    input-remapper
    iotop
    iperf3
    iproute2
    jq
    killall
    kitty
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
    nettools
    nfs-utils
    nftables
    nil
    nix-top
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
    podman
    podman-compose
    podman-tui
    profont
    pstree
    pv
    python3Full
    python311Packages.bootstrapped-pip
    pywal
    qemu
    qmk-udev-rules
    qrencode
    rgp
    ripgrep
    rocminfo
    rocm-core
    rocm-comgr
    rocm-cmake
    rocm-device-libs
    rocm-opencl-icd
    rocm-opencl-runtime
    rocm-runtime
    rocm-thunk
    rocm-smi
    rocmlir-rock
    rocsparse
    rocsolver
    rocprim
    rocalution
    rccl
    miopen
    miopengemm
    hipsparse
    hipsolver
    hipblas
    rocgdb
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
    w3m
    watch
    waybar
    wdisplays
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
