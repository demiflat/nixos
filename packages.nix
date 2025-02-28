{
#  inputs,
  system,
  config,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    akkuPackages.scheme-langserver
    abiword
    asciinema
    alacritty
    alsa-utils
    amd-blis
    amdctl
    amdgpu_top
    #amdvlk
    appimage-run
    aria2
    b612
    bat
    bc
#    beets
    bottom
    blocky
    blueberry
    bluetuith
    bluez-tools
    brasero
    btop
    buildah
    can-utils
    cargo
    cfssl
    chafa
    chromium
    ##nemo-with-extensions
    circt
    clblast
    clinfo
    clipgrab
    #    cliphist
    clipman
    clolcat
    cmake
    colordiff
    conky
    copyq
    cosmic-term
    cri-o
    cri-tools
    criu
    crun
    cups-browsed
    cups-filters
    cups-brother-hll3230cdw
    ddcutil
    debootstrap
    delta
    detox
    diffuse
    #diffoscope
    difftastic
    dig
    dina-font
    dive
    doublecmd
    duf
    duff
    dunst
    dust
    easyeffects
    # gnome-themes-extra
    # gnomeExtensions.easyeffects-preset-selector
    envsubst
    eternal-terminal
    evtest
    exfat
    exfatprogs
    fastfetch
    fastgron
    fd
    ffmpeg_6-full
    figlet
    file
    fio
    firefox
    fish
    fnm
    font-awesome
    foot
    fortune
    freetube
    fx
    fzf
    #    gbar
    gdu
    gimp
    gitbatch
    gitFull
    git-lfs
    git-repo
    gitAndTools.git-extras
    git-repo-updater
    ghostty
    glow
    gedit
    # gnome-tweaks
    glib
    guile
    simple-scan
    gnumeric
    gptfdisk
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
    gparted
    gping
    gvproxy
    hack-font
    helix
    htmlq
    htop
    hunspell
    hunspellDicts.en_US
    # hyprland
    hypr
    hyprcursor
    hypridle
    hyprland
    hyprlock
    hyprpaper
    hyprland-protocols
    hyprpicker
    hyprpolkitagent
    hyprshade
    hyprshot
    hyprsunset
    # xdg-desktop-portal-hyprland
    # xdg-desktop-portal-gtk
    idevicerestore
    usbmuxd
    ifuse
    libimobiledevice
    imagemagick
    imhex
    imv
    #    input-remapper
    iotop
    iperf3
    iproute2
    #isd
    jc
    # jeezyvim
    jmtpfs
    jq
    jql
    # jupyter
    kdiff3
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
    lagrange
    lagrange-tui
    lazygit
    ledger
    lego
    libfido2
    libnotify
    librewolf
    #libreoffice-fresh
    libreoffice-qt6-fresh
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtwayland
    libvirt
    light
    links2
    #    litestream
    lix
    lldb
    #llvmPackages.mlir
    logiops
    logitech-udev-rules
    losslesscut-bin
    loupe
    lsd
    lsix
    lsof
    ltunify
    luajit
    lua51Packages.telescope-nvim
    luajitPackages.telescope-nvim
    #lunarvim
    lynx
    mako
    maven
    mc
    meld
    microcodeAmd
    minicom
    most
    mpv
    mupdf
    nautilus
    neovim
    #    neovide
    #nerdfonts
    nerd-fonts._0xproto
    nerd-fonts._3270
    nerd-fonts.agave
    nerd-fonts.anonymice
    nerd-fonts.arimo
    nerd-fonts.aurulent-sans-mono
    nerd-fonts.bigblue-terminal
    nerd-fonts.bitstream-vera-sans-mono
    nerd-fonts.blex-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.code-new-roman
    nerd-fonts.comic-shanns-mono
    nerd-fonts.commit-mono
    nerd-fonts.cousine
    nerd-fonts.d2coding
    nerd-fonts.daddy-time-mono
    nerd-fonts.dejavu-sans-mono
    nerd-fonts.departure-mono
    nerd-fonts.droid-sans-mono
    nerd-fonts.envy-code-r
    nerd-fonts.fantasque-sans-mono
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
    nerd-fonts.geist-mono
    nerd-fonts.go-mono
    nerd-fonts.gohufont
    nerd-fonts.hack
    nerd-fonts.hasklug
    nerd-fonts.heavy-data
    nerd-fonts.hurmit
    nerd-fonts.im-writing
    nerd-fonts.inconsolata
    nerd-fonts.inconsolata-go
    nerd-fonts.inconsolata-lgc
    nerd-fonts.intone-mono
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term
    nerd-fonts.iosevka-term-slab
    nerd-fonts.jetbrains-mono
    nerd-fonts.lekton
    nerd-fonts.liberation
    nerd-fonts.lilex
    nerd-fonts.martian-mono
    nerd-fonts.meslo-lg
    nerd-fonts.monaspace
    nerd-fonts.monofur
    nerd-fonts.monoid
    nerd-fonts.mononoki
    nerd-fonts.mplus
    nerd-fonts.noto
    nerd-fonts.open-dyslexic
    nerd-fonts.overpass
    nerd-fonts.profont
    nerd-fonts.proggy-clean-tt
    nerd-fonts.recursive-mono
    nerd-fonts.roboto-mono
    nerd-fonts.sauce-code-pro
    nerd-fonts.shure-tech-mono
    nerd-fonts.space-mono
    nerd-fonts.symbols-only
    nerd-fonts.terminess-ttf
    nerd-fonts.tinos
    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu-sans
    nerd-fonts.victor-mono
    nerd-fonts.zed-mono
    # netbird-ui
    nettools
    nfs-utils
    nftables
    nginx
    nil
    nixfmt-rfc-style
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
    #    nrfutil
    ntfs3g
    #nvtopPackages.amd
    nwg-look
    ollama
    #ollama-rocm
    openocd
    openssl
    #openvswitch
    p7zip
    pamixer
    pass
    passExtensions.pass-otp
    pavucontrol
    perf-tools
    picocom
    pinentry-curses
    plasma-theme-switcher
    planify
    platformio
    platformio-core
    podman
    podman-compose
    podman-tui
    #    popcorntime
    poppler_utils
    profont
    procs
    progress
    progress-tracker
    pstree
    pulseaudio
    pulsemixer
    pv
    pwgen
    pw-volume
    pwru

    python3
    python3Full
    #python311Packages.pip

    # klipper graphs
    #python311Packages.matplotlib
    #python311Packages.numpy

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

    pywal
    pywalfox-native
    #streamlit
    sd
    sioyek
    solo2-cli
    # sommelier
    starship
    synfigstudio
    systemctl-tui
    taglib
    termdown
    terraform-providers.libvirt
    openssl
    #    opentoonz
    libedit
    libxml2
    libxslt
    libzip
    zlib

    paperless-ngx
    playerctl
    pywal
    qemu
    qmk-udev-rules
    qrencode
    qt6.qtwayland
    ranger
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
    scrot
    skopeo
    socat
    spacevim
    sqlite
    sqlitebrowser
    strace
    sudo-font
    sway
    swayidle
    swaylock-effects
    swaylock
    taskwarrior3
    taskwarrior-tui
    teensy-udev-rules
    telescope
    tesseract
    tmux
    tockloader
    tig
    tio
    tpmmanager
    tpm2-tools
    transmission_4
    transmission_4-gtk
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
    udiskie
    unzip
    unpaper
    unrar
    up
    usbtop
    usbutils
    #ustreamer
    utterly-nord-plasma
    vanilla-dmz
    vhs
    via
    virt-manager
    virt-top
    virter
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
    #xfce.thunar
    wget
    wireguard-tools
    wl-clipboard
    wl-clip-persist
    # wl-screenrec
    wlogout
    wlsunset
    wofi
    wpgtk
    wshowkeys
    xkcd-font
    xkcdpass
    yarn
    yazi
    zathura
    #zed-editor
    zellij
    zenmonitor
    zoxide
    yt-dlp
    zip
    zlib
    zstd
  ];
}
