{
  #  system,
  config,
  pkgs,
  pkgs-stable,
  inputs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    abcde
    abiword
    alacritty
    alsa-utils
    amd-blis
    amdctl
    amdgpu_top
    #amdvlk
    android-file-transfer
    appimage-run
    aria2
    asciinema
    b612
    bat
    bc
    #    beets
    binocle
    blesh
    blocky
    #blueberry
    bluetui
    #bluetuith
    bluez-tools
    bottom
    #    brasero
    # broken
    broot
    btop
    buildah
    bun
    caddy
    caligula
    canta-theme
    can-utils
    cargo
    cfssl
    chafa
    chromium
    circt
    clblast
    clinfo
    #    clipgrab
    #    cliphist
    clipman
    clipse
    clolcat
    cmake
    colordiff
    conky
    #    copyq
    cosmic-term

    cri-o
    cri-tools
    criu
    crrcsim
    crun
    cudatoolkit
    cups-brother-hll3230cdw
    cups-browsed
    cups-filters
    cups-printers
    #    cups-zj-58
    dbus-broker
    ddcutil
    debootstrap
    delta
    delve
    deno
    detox
    #diffoscope
    difftastic
    diffuse
    dig
    diskus
    dive
    #    doublecmd
    dmidecode
    duf
    duff
    dunst
    dust
    #easyeffects
    elementary-xfce-icon-theme
    emacs
    # end rocm
    envsubst
    epson-escpr
    # esphome
    eternal-terminal
    evtest
    exfat
    exfatprogs
    expresslrs-configurator
    fastfetch
    fastgron
    fd
    #    feishin
    ffmpeg-full
    figlet
    file
    file-roller
    fio
    firefox
    fish
    #    flightgear
    flashprog
    flashrom
    fnm
    foliate
    foot
    fortune
    freetube
    fx
    fzf
    #    gbar
    gdu
    gedit
    ghostty
    gimp
    #    gitAndTools.git-extras
    gitbatch
    git-extras
    gitFull
    gitg
    git-lfs
    #gitMinimal
    git-repo
    git-repo-updater
    gkrellm
    glib
    glow
    # gnomeExtensions.easyeffects-preset-selector
    gnome-firmware
    # gnome-themes-extra
    # gnome-tweaks
    gnumeric
    #go
    go
    #    golangci-lint
    #    golangci-lint-langserver
    gomi
    gomodifytags
    gopls
    gossa
    gotests
    go-tools
    gotty
    gparted
    gping
    gptfdisk
    graphviz
    # gron
    guile
    gvproxy
    helix
    hexyl
    htmlq
    htop
    httrack
    hunspell
    hunspellDicts.en_US
    hyperfine
    hypr
    hyprcursor
    hypridle
    # hyprland
    hyprland
    hyprland-protocols
    hyprlauncher
    hyprlock
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprpwcenter
    hyprshade
    hyprshot
    hyprsunset
    hyprsysteminfo
    idevicerestore
    ifuse
    imagemagick
    imhex
    impala
    impl
    imv
    inav-configurator
    #    input-remapper
    #    inputs.zen-browser.packages."${system}".twilight
    iotop-c
    iperf3
    iproute2
    #isd
    isd
    iwd
    jc
    #    jmtpfs
    jq
    jql
    jujutsu
    # jupyter
    kdiff3
    killall
    kind
    kitty
    # klipper graphs
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
    libedit
    libfido2
    libimobiledevice
    libnotify
    libreoffice-fresh
    #    libreoffice-qt6-fresh
    #librewolf
    #    libsForQt5.qt5ct
    #    libsForQt5.qt5.qtwayland
    #    libsForQt5.qtstyleplugin-kvantum
    libva-utils
    libvirt
    libxml2
    libxslt
    libzip
    # error: 'light' has been removed because it was unmaintained. 'brightnessctl' and 'acpilight' provide similar functionality.
    #light
    links2
    #    litestream
    #lix
    #llama-cpp
    pkgs-stable.llama-cpp
    #(pkgs.llama-cpp.override { cudaSupport = true; })
    lldb
    # llm
    #llvmPackages.mlir
    logiops
    logitech-udev-rules
    losslesscut-bin
    loupe
    lsd
    lshw
    lsix
    lsof
    ltunify
    luajit
    lvm2
    lvm2_dmeventd
    lvm2_vdo
    lynx
    mako
    maven
    mc
    meld
    microcode-amd
    minicom
    # ml:
    most
    mpv
    #        ms-vscode.cpptools
    mupdf
    nautilus
    nemo
    ##nemo-with-extensions
    #    neovide
    neovim

    # netbird-ui
    nettools
    nfs-utils
    nftables
    nginx
    nil
    nixd
    nix-du
    nixfmt
    nixfmt-tree
    nixos-artwork.wallpapers.stripes
    nixos-option
    nix-output-monitor
    nix-search-tv
    nix-top
    nix-tree
    nmap
    nodejs
    nordzy-cursor-theme
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    #    nrfutil
    ntfs3g
    numbat
    nushell
    nvidia-vaapi-driver
    #nvtopPackages.amd
    nvtopPackages.full
    nwg-look
    #    ollama
    #ollama-rocm
    opencode
    # openocd
    openocd
    openssl_oqs
    #    opentoonz
    #openvswitch
    p7zip
    pamixer
    #    paperless-ngx
    pass
    passExtensions.pass-otp
    pastel
    pavucontrol
    pciutils
    perf-tools
    picocom
    pinentry-curses
    pinta
    piper
    #    planify
    #    plasma-theme-switcher
    # platformio
    # platformio-core
    playerctl
    podman
    podman-compose
    #podman-desktop
    podman-tui
    #    popcorntime
    poppler-utils
    procs
    profont
    progress
    progress-tracker
    pstree
    pulseaudio
    pulsemixer
    pv
    pwgen
    pwru
    pw-volume
    # python310Packages.catboost
    # python310Packages.ipykernel
    # python310Packages.jupyter
    # python310Packages.jupyter-core
    # python310Packages.kaggle
    # python310Packages.lightgbm
    # python310Packages.matplotlib
    # python310Packages.notebook
    # python310Packages.numpy
    # python310Packages.pandas
    # python310Packages.pre-commit-hooks
    # python310Packages.requests
    # python310Packages.scikit-learn
    # python310Packages.seaborn
    # python310Packages.tensorboard
    # python310Packages.torchaudio
    # python310Packages.torchvision
    # python310Packages.torchWithRocm
    # python310Packages.tqdm
    # python310Packages.venvShellHook
    # python310Packages.wandb
    # python310Packages.xgboost
    # python311Full
    #python311Packages.matplotlib
    #python311Packages.numpy
    # python311Packages.pip
    #python311Packages.pip
    # python311Packages.pyserial
    # python311Packages.setuptools
    # python312Full
    # python312Packages.pip
    # python312Packages.pyserial
    # python312Packages.python
    # python312Packages.setuptools
    python313
    #python313Packages.smolagents
    #    python3Full
    pywal
    pywalfox-native
    qemu
    qmk-udev-rules
    qrencode
    kdePackages.qtwayland
    quickemu
    racket
    ranger
    recutils
    rename
    #    rgp
    rio
    ripgrep
    # rocm
    # rocmPackages.hipblas
    # rocmPackages.hipsolver
    # rocmPackages.hipsparse
    # rocmPackages.llvm.bintools
    # rocmPackages.llvm.clang
    # rocmPackages.llvm.clang-tools-extra
    # rocmPackages.llvm.compiler-rt
    # rocmPackages.llvm.libc
    # rocmPackages.llvm.libcxx
    # rocmPackages.llvm.libcxxabi
    # rocmPackages.llvm.libunwind
    # rocmPackages.llvm.lld
    # rocmPackages.llvm.lldb
    # rocmPackages.llvm.llvm
    # rocmPackages.llvm.mlir
    # rocmPackages.llvm.openmp
    # rocmPackages.llvm.polly
    # rocmPackages.llvm.pstl
    # rocmPackages.llvm.rocmClangStdenv
    # rocmPackages.miopen
    # rocmPackages.miopengemm
    # rocmPackages.rccl
    # rocmPackages.rocalution
    # rocmPackages.rocgdb
    # rocmPackages.rocm-cmake
    # rocmPackages.rocm-comgr
    # rocmPackages.rocm-core
    # rocmPackages.rocm-device-libs
    # rocmPackages.rocm-docs-core
    # rocmPackages.rocminfo
    # rocmPackages.rocmlir
    # rocmPackages.rocmlir-rock
    # rocmPackages.rocm-runtime
    # rocmPackages.rocm-thunk
    # rocmPackages.rocprim
    # rocmPackages.rocsolver
    # rocmPackages.rocsparse
    rofi
    rr
    runc
    rustc
    rustup
    scrot
    sd
    simple-scan
    sioyek
    skopeo
    socat
    solaar
    solo2-cli
    # sommelier
    spice-gtk
    sqlite
    #    sqlitebrowser
    starship
    strace
    #streamlit
    sudo-font
    superhtml
    sway
    swayidle
    swaylock
    swaylock-effects
    synfigstudio
    systemctl-tui
    taglib
    taskwarrior3
    taskwarrior-tui
    teensy-udev-rules
    telescope
    termdown
    terraform-providers.dmacvicar_libvirt
    #terraform-providers.libvirt
    tesseract
    tig
    tio
    tmux
    tockloader
    tpm2-tools
    #    tpmmanager
    pkgs-stable.transmission_4
    pkgs-stable.transmission_4-gtk
    themechanger
    tokyonight-gtk-theme
    tree
    treesheets
    tree-sitter
    tuigreet
    udiskie
    unpaper
    unrar
    unzip
    up
    usbmuxd
    usbtop
    usbutils
    #ustreamer
    utterly-nord-plasma
    uv
    vanilla-dmz
    vhs
    via
    virter
    virtiofsd
    virt-manager
    virt-top
    visidata
    vit
    vivid
    #vllm
    #      vscodeExtensions = with vscode-extensions; [
    #      vscode = vscodium;
    #    (vscode-with-extensions.override {
    vscodium
    w3m
    walker
    watch
    waybar
    wdisplays
    #    webex
    wezterm
    wget
    whipper
    wireguard-tools
    wl-clipboard
    wl-clip-persist
    wlogout
    # wl-screenrec
    wlr-which-key
    wlsunset
    wofi
    wpgtk
    wsdd
    wshowkeys
    xan
    # xdg-desktop-portal-gtk
    # xdg-desktop-portal-hyprland
    #xfce.thunar
    xkcd-font
    xkcdpass
    xxd
    yarn
    yazi
    yt-dlp
    zathura
    #zed-editor
    zellij
    #    zenmonitor
    zip
    zlib
    zoxide
    zstd

  ];
}
