{
  system,
  config,
  pkgs,
  pkgs-stable,
  inputs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    # llm
    llama-cpp
    #vllm
    #    inputs.zen-browser.packages."${system}".twilight
    abcde
    akkuPackages.scheme-langserver
    abiword
    asciinema
    alacritty
    alsa-utils
    amd-blis
    amdctl
    amdgpu_top
    #amdvlk
    android-file-transfer
    appimage-run
    aria2
    b612
    bat
    bc
    #    beets
    bottom
    binocle
    blocky
    blueberry
    bluetui
    bluetuith
    bluez-tools
    #    brasero
    broot
    btop
    buildah
    bun
    caddy
    can-utils
    canta-theme
    cargo
    cfssl
    chafa
    chromium
    ##nemo-with-extensions
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
    crun
    crrcsim
    #    flightgear
    cups-browsed
    cups-filters
    cups-printers
    cups-brother-hll3230cdw
    #    cups-zj-58
    epson-escpr
    dbus-broker
    ddcutil
    debootstrap
    delta
    detox
    diffuse
    #diffoscope
    difftastic
    dig
    dina-font
    diskus
    dive
    #    doublecmd
    duf
    duff
    dunst
    dust
    #easyeffects
    # gnome-themes-extra
    # gnomeExtensions.easyeffects-preset-selector
    gnome-firmware
    graphviz
    elementary-xfce-icon-theme
    emacs
    envsubst
    eternal-terminal
    evtest
    exfat
    exfatprogs
    fastfetch
    fastgron
    fd
    feishin
    ffmpeg_6-full
    figlet
    file
    file-roller
    fio
    firefox
    fish
    fnm
    foliate
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
    #gitMinimal
    gitFull
    gitg
    git-lfs
    git-repo
    #    gitAndTools.git-extras
    git-extras
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
    #    golangci-lint
    #    golangci-lint-langserver

    gkrellm
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
    hexyl
    htmlq
    htop
    httrack
    hunspell
    hunspellDicts.en_US
    hyperfine
    # hyprland
    hypr
    hyprcursor
    hypridle
    hyprland
    hyprlauncher
    hyprlock
    hyprpaper
    hyprland-protocols
    hyprpicker
    hyprpolkitagent
    hyprpwcenter
    hyprshade
    hyprshot
    hyprsunset
    hyprsysteminfo
    # xdg-desktop-portal-hyprland
    # xdg-desktop-portal-gtk
    idevicerestore
    usbmuxd
    ifuse
    isd
    libimobiledevice
    imagemagick
    imhex
    imv
    #    input-remapper
    #    iotop
    iotop-c
    iperf3
    iproute2
    #isd
    jc
    # jeezyvim
    #    jmtpfs
    jq
    jql
    # jupyter
    kdiff3
    killall
    kitty
    koreader
    kind
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
    #librewolf
    libreoffice-fresh
    #    libreoffice-qt6-fresh
    #    libsForQt5.qt5ct
    #    libsForQt5.qtstyleplugin-kvantum
    #    libsForQt5.qt5.qtwayland
    libva-utils
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
    lvm2
    lvm2_vdo
    lvm2_dmeventd
    lynx
    mako
    maven
    mc
    meld
    microcode-amd
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
    #    nerd-fonts.mplus
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
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
    #    nil
    nixfmt
    nixfmt-tree
    nix-du
    nix-search-tv
    nix-top
    nix-tree
    nixos-artwork.wallpapers.stripes
    nixos-option
    nix-output-monitor
    nmap
    nodejs_20
    nordzy-cursor-theme
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    numbat
    nushell
    #    nrfutil
    ntfs3g
    #nvtopPackages.amd
    nwg-look
    #    ollama
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
    #    plasma-theme-switcher
    #    planify
    # platformio
    # platformio-core
    podman
    podman-compose
    podman-desktop
    podman-tui
    #    popcorntime
    poppler-utils
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

    python313
    #python313Packages.smolagents
    #    python3Full
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
    racket
    rio
    #streamlit
    sd
    sioyek
    solo2-cli
    # sommelier
    spice-gtk
    starship
    synfigstudio
    systemctl-tui
    taglib
    termdown
    #terraform-providers.libvirt
    terraform-providers.dmacvicar_libvirt
    tuigreet
    openssl
    #    opentoonz
    libedit
    libxml2
    libxslt
    libzip
    zlib

    #    paperless-ngx
    pastel
    pciutils
    playerctl
    pywal
    qemu
    qmk-udev-rules
    qrencode
    #qt6.qtwayland
    quickemu
    ranger
    recutils
    rename
    #    rgp
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
    rr
    runc
    rustc
    rustup
    scrot
    skopeo
    socat
    #spacevim
    sqlite
    #    sqlitebrowser
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
    #    tpmmanager
    tpm2-tools
    transmission_4
    transmission_4-gtk
    tree

    tree-sitter
    tree-sitter-grammars.tree-sitter-ada
    tree-sitter-grammars.tree-sitter-adl
    tree-sitter-grammars.tree-sitter-agda
    tree-sitter-grammars.tree-sitter-alloy
    tree-sitter-grammars.tree-sitter-amber
    tree-sitter-grammars.tree-sitter-astro
    tree-sitter-grammars.tree-sitter-awk
    tree-sitter-grammars.tree-sitter-bash
    tree-sitter-grammars.tree-sitter-bass
    tree-sitter-grammars.tree-sitter-beancount
    tree-sitter-grammars.tree-sitter-bibtex
    tree-sitter-grammars.tree-sitter-bicep
    tree-sitter-grammars.tree-sitter-bitbake
    tree-sitter-grammars.tree-sitter-blade
    tree-sitter-grammars.tree-sitter-blueprint
    tree-sitter-grammars.tree-sitter-bqn
    tree-sitter-grammars.tree-sitter-c
    tree-sitter-grammars.tree-sitter-c-sharp
    tree-sitter-grammars.tree-sitter-caddyfile
    tree-sitter-grammars.tree-sitter-cairo
    tree-sitter-grammars.tree-sitter-capnp
    tree-sitter-grammars.tree-sitter-cel
    tree-sitter-grammars.tree-sitter-circom
    tree-sitter-grammars.tree-sitter-clarity
    tree-sitter-grammars.tree-sitter-clojure
    tree-sitter-grammars.tree-sitter-cmake
    tree-sitter-grammars.tree-sitter-comment
    tree-sitter-grammars.tree-sitter-commonlisp
    tree-sitter-grammars.tree-sitter-cpon
    tree-sitter-grammars.tree-sitter-cpp
    tree-sitter-grammars.tree-sitter-crystal
    tree-sitter-grammars.tree-sitter-css
    tree-sitter-grammars.tree-sitter-csv
    tree-sitter-grammars.tree-sitter-cuda
    tree-sitter-grammars.tree-sitter-cue
    tree-sitter-grammars.tree-sitter-cylc
    tree-sitter-grammars.tree-sitter-d
    tree-sitter-grammars.tree-sitter-dart
    tree-sitter-grammars.tree-sitter-dbml
    tree-sitter-grammars.tree-sitter-debian
    tree-sitter-grammars.tree-sitter-devicetree
    tree-sitter-grammars.tree-sitter-dhall
    tree-sitter-grammars.tree-sitter-diff
    tree-sitter-grammars.tree-sitter-djot
    tree-sitter-grammars.tree-sitter-dockerfile
    tree-sitter-grammars.tree-sitter-dot
    tree-sitter-grammars.tree-sitter-dtd
    tree-sitter-grammars.tree-sitter-dunstrc
    tree-sitter-grammars.tree-sitter-earthfile
    tree-sitter-grammars.tree-sitter-edoc
    tree-sitter-grammars.tree-sitter-eex
    tree-sitter-grammars.tree-sitter-elisp
    tree-sitter-grammars.tree-sitter-elixir
    tree-sitter-grammars.tree-sitter-elm
    tree-sitter-grammars.tree-sitter-elvish
    tree-sitter-grammars.tree-sitter-embedded-template
    tree-sitter-grammars.tree-sitter-erlang
    tree-sitter-grammars.tree-sitter-esdl
    tree-sitter-grammars.tree-sitter-factor
    tree-sitter-grammars.tree-sitter-fennel
    tree-sitter-grammars.tree-sitter-fga
    tree-sitter-grammars.tree-sitter-fidl
    tree-sitter-grammars.tree-sitter-fish
    tree-sitter-grammars.tree-sitter-forth
    tree-sitter-grammars.tree-sitter-fortran
    tree-sitter-grammars.tree-sitter-fsharp
    tree-sitter-grammars.tree-sitter-gas
    tree-sitter-grammars.tree-sitter-gdscript
    tree-sitter-grammars.tree-sitter-gemini
    tree-sitter-grammars.tree-sitter-gherkin
    tree-sitter-grammars.tree-sitter-ghostty
    tree-sitter-grammars.tree-sitter-git-config
    tree-sitter-grammars.tree-sitter-git-rebase
    tree-sitter-grammars.tree-sitter-gitattributes
    tree-sitter-grammars.tree-sitter-gitcommit
    tree-sitter-grammars.tree-sitter-gitignore
    tree-sitter-grammars.tree-sitter-gleam
    tree-sitter-grammars.tree-sitter-glimmer
    tree-sitter-grammars.tree-sitter-glsl
    tree-sitter-grammars.tree-sitter-gn
    tree-sitter-grammars.tree-sitter-go
    tree-sitter-grammars.tree-sitter-go-template
    tree-sitter-grammars.tree-sitter-godot-resource
    tree-sitter-grammars.tree-sitter-gomod
    tree-sitter-grammars.tree-sitter-gotmpl
    tree-sitter-grammars.tree-sitter-gowork
    tree-sitter-grammars.tree-sitter-gpr
    tree-sitter-grammars.tree-sitter-graphql
    tree-sitter-grammars.tree-sitter-gren
    tree-sitter-grammars.tree-sitter-groovy
    tree-sitter-grammars.tree-sitter-hare
    tree-sitter-grammars.tree-sitter-haskell
    tree-sitter-grammars.tree-sitter-haskell-persistent
    tree-sitter-grammars.tree-sitter-hcl
    tree-sitter-grammars.tree-sitter-heex
    tree-sitter-grammars.tree-sitter-hjson
    tree-sitter-grammars.tree-sitter-hocon
    tree-sitter-grammars.tree-sitter-hoon
    tree-sitter-grammars.tree-sitter-hosts
    tree-sitter-grammars.tree-sitter-html
    tree-sitter-grammars.tree-sitter-htmldjango
    tree-sitter-grammars.tree-sitter-http
    tree-sitter-grammars.tree-sitter-hurl
    tree-sitter-grammars.tree-sitter-hyprlang
    tree-sitter-grammars.tree-sitter-iex
    tree-sitter-grammars.tree-sitter-ini
    tree-sitter-grammars.tree-sitter-ink
    tree-sitter-grammars.tree-sitter-inko
    tree-sitter-grammars.tree-sitter-janet-simple
    tree-sitter-grammars.tree-sitter-java
    tree-sitter-grammars.tree-sitter-javascript
    tree-sitter-grammars.tree-sitter-jinja2
    tree-sitter-grammars.tree-sitter-jjdescription
    tree-sitter-grammars.tree-sitter-jq
    tree-sitter-grammars.tree-sitter-jsdoc
    tree-sitter-grammars.tree-sitter-json
    tree-sitter-grammars.tree-sitter-json5
    tree-sitter-grammars.tree-sitter-jsonnet
    tree-sitter-grammars.tree-sitter-julia
    tree-sitter-grammars.tree-sitter-just
    tree-sitter-grammars.tree-sitter-kdl
    tree-sitter-grammars.tree-sitter-koka
    tree-sitter-grammars.tree-sitter-kotlin
    tree-sitter-grammars.tree-sitter-koto
    tree-sitter-grammars.tree-sitter-latex
    tree-sitter-grammars.tree-sitter-ld
    tree-sitter-grammars.tree-sitter-ldif
    tree-sitter-grammars.tree-sitter-lean
    tree-sitter-grammars.tree-sitter-ledger
    tree-sitter-grammars.tree-sitter-llvm
    tree-sitter-grammars.tree-sitter-llvm-mir
    tree-sitter-grammars.tree-sitter-log
    tree-sitter-grammars.tree-sitter-lpf
    tree-sitter-grammars.tree-sitter-lua
    tree-sitter-grammars.tree-sitter-luau
    tree-sitter-grammars.tree-sitter-mail
    tree-sitter-grammars.tree-sitter-make
    tree-sitter-grammars.tree-sitter-markdoc
    tree-sitter-grammars.tree-sitter-markdown
    tree-sitter-grammars.tree-sitter-markdown-inline
    tree-sitter-grammars.tree-sitter-matlab
    tree-sitter-grammars.tree-sitter-mermaid
    tree-sitter-grammars.tree-sitter-meson
    tree-sitter-grammars.tree-sitter-mojo
    tree-sitter-grammars.tree-sitter-move
    tree-sitter-grammars.tree-sitter-nasm
    tree-sitter-grammars.tree-sitter-netlinx
    tree-sitter-grammars.tree-sitter-nginx
    tree-sitter-grammars.tree-sitter-nickel
    tree-sitter-grammars.tree-sitter-nim
    tree-sitter-grammars.tree-sitter-nix
    tree-sitter-grammars.tree-sitter-norg
    tree-sitter-grammars.tree-sitter-norg-meta
    tree-sitter-grammars.tree-sitter-nu
    tree-sitter-grammars.tree-sitter-ocaml
    tree-sitter-grammars.tree-sitter-ocaml-interface
    tree-sitter-grammars.tree-sitter-odin
    tree-sitter-grammars.tree-sitter-ohm
    tree-sitter-grammars.tree-sitter-opencl
    tree-sitter-grammars.tree-sitter-openscad
    tree-sitter-grammars.tree-sitter-org
    tree-sitter-grammars.tree-sitter-org-nvim
    tree-sitter-grammars.tree-sitter-pascal
    tree-sitter-grammars.tree-sitter-passwd
    tree-sitter-grammars.tree-sitter-pem
    tree-sitter-grammars.tree-sitter-perl
    tree-sitter-grammars.tree-sitter-pest
    tree-sitter-grammars.tree-sitter-pgn
    tree-sitter-grammars.tree-sitter-php
    tree-sitter-grammars.tree-sitter-php-only
    tree-sitter-grammars.tree-sitter-phpdoc
    tree-sitter-grammars.tree-sitter-pioasm
    tree-sitter-grammars.tree-sitter-pkl
    tree-sitter-grammars.tree-sitter-po
    tree-sitter-grammars.tree-sitter-pod
    tree-sitter-grammars.tree-sitter-ponylang
    tree-sitter-grammars.tree-sitter-powershell
    tree-sitter-grammars.tree-sitter-prisma
    tree-sitter-grammars.tree-sitter-prolog
    tree-sitter-grammars.tree-sitter-properties
    tree-sitter-grammars.tree-sitter-proto
    tree-sitter-grammars.tree-sitter-prql
    tree-sitter-grammars.tree-sitter-pug
    tree-sitter-grammars.tree-sitter-purescript
    tree-sitter-grammars.tree-sitter-python
    tree-sitter-grammars.tree-sitter-ql
    tree-sitter-grammars.tree-sitter-ql-dbscheme
    tree-sitter-grammars.tree-sitter-qmljs
    tree-sitter-grammars.tree-sitter-query
    tree-sitter-grammars.tree-sitter-quint
    tree-sitter-grammars.tree-sitter-r
    tree-sitter-grammars.tree-sitter-razor
    tree-sitter-grammars.tree-sitter-readline
    tree-sitter-grammars.tree-sitter-regex
    tree-sitter-grammars.tree-sitter-rego
    tree-sitter-grammars.tree-sitter-rescript
    tree-sitter-grammars.tree-sitter-river
    tree-sitter-grammars.tree-sitter-robot
    tree-sitter-grammars.tree-sitter-ron
    tree-sitter-grammars.tree-sitter-rst
    tree-sitter-grammars.tree-sitter-ruby
    tree-sitter-grammars.tree-sitter-rust
    tree-sitter-grammars.tree-sitter-rust-format-args
    tree-sitter-grammars.tree-sitter-scala
    tree-sitter-grammars.tree-sitter-scheme
    tree-sitter-grammars.tree-sitter-scss
    tree-sitter-grammars.tree-sitter-slang
    tree-sitter-grammars.tree-sitter-slint
    tree-sitter-grammars.tree-sitter-smali
    tree-sitter-grammars.tree-sitter-smithy
    tree-sitter-grammars.tree-sitter-sml
    tree-sitter-grammars.tree-sitter-snakemake
    tree-sitter-grammars.tree-sitter-solidity
    tree-sitter-grammars.tree-sitter-sourcepawn
    tree-sitter-grammars.tree-sitter-spade
    tree-sitter-grammars.tree-sitter-sparql
    tree-sitter-grammars.tree-sitter-spicedb
    tree-sitter-grammars.tree-sitter-sql
    tree-sitter-grammars.tree-sitter-sshclientconfig
    tree-sitter-grammars.tree-sitter-strace
    tree-sitter-grammars.tree-sitter-supercollider
    tree-sitter-grammars.tree-sitter-surface
    tree-sitter-grammars.tree-sitter-svelte
    tree-sitter-grammars.tree-sitter-sway
    tree-sitter-grammars.tree-sitter-swift
    tree-sitter-grammars.tree-sitter-t32
    tree-sitter-grammars.tree-sitter-tablegen
    tree-sitter-grammars.tree-sitter-tact
    tree-sitter-grammars.tree-sitter-talon
    tree-sitter-grammars.tree-sitter-task
    tree-sitter-grammars.tree-sitter-tcl
    tree-sitter-grammars.tree-sitter-teal
    tree-sitter-grammars.tree-sitter-templ
    tree-sitter-grammars.tree-sitter-tera
    tree-sitter-grammars.tree-sitter-textproto
    tree-sitter-grammars.tree-sitter-thrift
    tree-sitter-grammars.tree-sitter-tiger
    tree-sitter-grammars.tree-sitter-tlaplus
    tree-sitter-grammars.tree-sitter-todotxt
    tree-sitter-grammars.tree-sitter-toml
    tree-sitter-grammars.tree-sitter-tsq
    tree-sitter-grammars.tree-sitter-tsx
    tree-sitter-grammars.tree-sitter-turtle
    tree-sitter-grammars.tree-sitter-twig
    tree-sitter-grammars.tree-sitter-typescript
    tree-sitter-grammars.tree-sitter-typespec
    tree-sitter-grammars.tree-sitter-typst
    tree-sitter-grammars.tree-sitter-uiua
    tree-sitter-grammars.tree-sitter-ungrammar
    tree-sitter-grammars.tree-sitter-unison
    tree-sitter-grammars.tree-sitter-uxntal
    tree-sitter-grammars.tree-sitter-v
    tree-sitter-grammars.tree-sitter-vala
    tree-sitter-grammars.tree-sitter-vento
    tree-sitter-grammars.tree-sitter-verilog
    tree-sitter-grammars.tree-sitter-vhdl
    tree-sitter-grammars.tree-sitter-vhs
    tree-sitter-grammars.tree-sitter-vim
    tree-sitter-grammars.tree-sitter-vue
    tree-sitter-grammars.tree-sitter-wast
    tree-sitter-grammars.tree-sitter-wat
    tree-sitter-grammars.tree-sitter-werk
    tree-sitter-grammars.tree-sitter-wesl
    tree-sitter-grammars.tree-sitter-wgsl
    tree-sitter-grammars.tree-sitter-wing
    tree-sitter-grammars.tree-sitter-wit
    tree-sitter-grammars.tree-sitter-wren
    tree-sitter-grammars.tree-sitter-xit
    tree-sitter-grammars.tree-sitter-xml
    tree-sitter-grammars.tree-sitter-xtc
    tree-sitter-grammars.tree-sitter-yaml
    tree-sitter-grammars.tree-sitter-yang
    tree-sitter-grammars.tree-sitter-yara
    tree-sitter-grammars.tree-sitter-yuck
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

    vimPlugins.nvim-treesitter
    vimPlugins.nvim-treesitter-context
    vimPlugins.nvim-treesitter-endwise
    vimPlugins.nvim-treesitter-legacy
    vimPlugins.nvim-treesitter-locals
    vimPlugins.nvim-treesitter-pairs
    vimPlugins.nvim-treesitter-parsers.ada
    vimPlugins.nvim-treesitter-parsers.agda
    vimPlugins.nvim-treesitter-parsers.angular
    vimPlugins.nvim-treesitter-parsers.apex
    vimPlugins.nvim-treesitter-parsers.arduino
    vimPlugins.nvim-treesitter-parsers.asm
    vimPlugins.nvim-treesitter-parsers.astro
    vimPlugins.nvim-treesitter-parsers.authzed
    vimPlugins.nvim-treesitter-parsers.awk
    vimPlugins.nvim-treesitter-parsers.bash
    vimPlugins.nvim-treesitter-parsers.bass
    vimPlugins.nvim-treesitter-parsers.beancount
    vimPlugins.nvim-treesitter-parsers.bibtex
    vimPlugins.nvim-treesitter-parsers.bicep
    vimPlugins.nvim-treesitter-parsers.bitbake
    vimPlugins.nvim-treesitter-parsers.blade
    vimPlugins.nvim-treesitter-parsers.bp
    vimPlugins.nvim-treesitter-parsers.bpftrace
    vimPlugins.nvim-treesitter-parsers.brightscript
    vimPlugins.nvim-treesitter-parsers.c
    vimPlugins.nvim-treesitter-parsers.c3
    vimPlugins.nvim-treesitter-parsers.c_sharp
    vimPlugins.nvim-treesitter-parsers.caddy
    vimPlugins.nvim-treesitter-parsers.cairo
    vimPlugins.nvim-treesitter-parsers.capnp
    vimPlugins.nvim-treesitter-parsers.chatito
    vimPlugins.nvim-treesitter-parsers.circom
    vimPlugins.nvim-treesitter-parsers.clojure
    vimPlugins.nvim-treesitter-parsers.cmake
    vimPlugins.nvim-treesitter-parsers.comment
    vimPlugins.nvim-treesitter-parsers.commonlisp
    vimPlugins.nvim-treesitter-parsers.cooklang
    vimPlugins.nvim-treesitter-parsers.corn
    vimPlugins.nvim-treesitter-parsers.cpon
    vimPlugins.nvim-treesitter-parsers.cpp
    vimPlugins.nvim-treesitter-parsers.css
    vimPlugins.nvim-treesitter-parsers.csv
    vimPlugins.nvim-treesitter-parsers.cuda
    vimPlugins.nvim-treesitter-parsers.cue
    vimPlugins.nvim-treesitter-parsers.cylc
    vimPlugins.nvim-treesitter-parsers.d
    vimPlugins.nvim-treesitter-parsers.dart
    vimPlugins.nvim-treesitter-parsers.desktop
    vimPlugins.nvim-treesitter-parsers.devicetree
    vimPlugins.nvim-treesitter-parsers.dhall
    vimPlugins.nvim-treesitter-parsers.diff
    vimPlugins.nvim-treesitter-parsers.disassembly
    vimPlugins.nvim-treesitter-parsers.djot
    vimPlugins.nvim-treesitter-parsers.dockerfile
    vimPlugins.nvim-treesitter-parsers.dot
    vimPlugins.nvim-treesitter-parsers.doxygen
    vimPlugins.nvim-treesitter-parsers.dtd
    vimPlugins.nvim-treesitter-parsers.earthfile
    vimPlugins.nvim-treesitter-parsers.ebnf
    vimPlugins.nvim-treesitter-parsers.editorconfig
    vimPlugins.nvim-treesitter-parsers.eds
    vimPlugins.nvim-treesitter-parsers.eex
    vimPlugins.nvim-treesitter-parsers.elixir
    vimPlugins.nvim-treesitter-parsers.elm
    vimPlugins.nvim-treesitter-parsers.elsa
    vimPlugins.nvim-treesitter-parsers.elvish
    vimPlugins.nvim-treesitter-parsers.embedded_template
    vimPlugins.nvim-treesitter-parsers.enforce
    vimPlugins.nvim-treesitter-parsers.erlang
    vimPlugins.nvim-treesitter-parsers.facility
    vimPlugins.nvim-treesitter-parsers.faust
    vimPlugins.nvim-treesitter-parsers.fennel
    vimPlugins.nvim-treesitter-parsers.fidl
    vimPlugins.nvim-treesitter-parsers.firrtl
    vimPlugins.nvim-treesitter-parsers.fish
    vimPlugins.nvim-treesitter-parsers.foam
    vimPlugins.nvim-treesitter-parsers.forth
    vimPlugins.nvim-treesitter-parsers.fortran
    vimPlugins.nvim-treesitter-parsers.fsh
    vimPlugins.nvim-treesitter-parsers.fsharp
    vimPlugins.nvim-treesitter-parsers.func
    vimPlugins.nvim-treesitter-parsers.gap
    vimPlugins.nvim-treesitter-parsers.gaptst
    vimPlugins.nvim-treesitter-parsers.gdscript
    vimPlugins.nvim-treesitter-parsers.gdshader
    vimPlugins.nvim-treesitter-parsers.git_config
    vimPlugins.nvim-treesitter-parsers.git_rebase
    vimPlugins.nvim-treesitter-parsers.gitattributes
    vimPlugins.nvim-treesitter-parsers.gitcommit
    vimPlugins.nvim-treesitter-parsers.gitignore
    vimPlugins.nvim-treesitter-parsers.gleam
    vimPlugins.nvim-treesitter-parsers.glimmer
    vimPlugins.nvim-treesitter-parsers.glimmer_javascript
    vimPlugins.nvim-treesitter-parsers.glimmer_typescript
    vimPlugins.nvim-treesitter-parsers.glsl
    vimPlugins.nvim-treesitter-parsers.gn
    vimPlugins.nvim-treesitter-parsers.gnuplot
    vimPlugins.nvim-treesitter-parsers.go
    vimPlugins.nvim-treesitter-parsers.goctl
    vimPlugins.nvim-treesitter-parsers.godot_resource
    vimPlugins.nvim-treesitter-parsers.gomod
    vimPlugins.nvim-treesitter-parsers.gosum
    vimPlugins.nvim-treesitter-parsers.gotmpl
    vimPlugins.nvim-treesitter-parsers.gowork
    vimPlugins.nvim-treesitter-parsers.gpg
    vimPlugins.nvim-treesitter-parsers.graphql
    vimPlugins.nvim-treesitter-parsers.gren
    vimPlugins.nvim-treesitter-parsers.groovy
    vimPlugins.nvim-treesitter-parsers.groq
    vimPlugins.nvim-treesitter-parsers.gstlaunch
    vimPlugins.nvim-treesitter-parsers.hack
    vimPlugins.nvim-treesitter-parsers.hare
    vimPlugins.nvim-treesitter-parsers.haskell
    vimPlugins.nvim-treesitter-parsers.haskell_persistent
    vimPlugins.nvim-treesitter-parsers.hcl
    vimPlugins.nvim-treesitter-parsers.heex
    vimPlugins.nvim-treesitter-parsers.helm
    vimPlugins.nvim-treesitter-parsers.hjson
    vimPlugins.nvim-treesitter-parsers.hlsl
    vimPlugins.nvim-treesitter-parsers.hlsplaylist
    vimPlugins.nvim-treesitter-parsers.hocon
    vimPlugins.nvim-treesitter-parsers.hoon
    vimPlugins.nvim-treesitter-parsers.html
    vimPlugins.nvim-treesitter-parsers.htmldjango
    vimPlugins.nvim-treesitter-parsers.http
    vimPlugins.nvim-treesitter-parsers.hurl
    vimPlugins.nvim-treesitter-parsers.hyprlang
    vimPlugins.nvim-treesitter-parsers.idl
    vimPlugins.nvim-treesitter-parsers.idris
    vimPlugins.nvim-treesitter-parsers.ini
    vimPlugins.nvim-treesitter-parsers.inko
    vimPlugins.nvim-treesitter-parsers.ispc
    vimPlugins.nvim-treesitter-parsers.janet_simple
    vimPlugins.nvim-treesitter-parsers.java
    vimPlugins.nvim-treesitter-parsers.javadoc
    vimPlugins.nvim-treesitter-parsers.javascript
    vimPlugins.nvim-treesitter-parsers.jinja
    vimPlugins.nvim-treesitter-parsers.jinja_inline
    vimPlugins.nvim-treesitter-parsers.jq
    vimPlugins.nvim-treesitter-parsers.jsdoc
    vimPlugins.nvim-treesitter-parsers.json
    vimPlugins.nvim-treesitter-parsers.json5
    vimPlugins.nvim-treesitter-parsers.jsonnet
    vimPlugins.nvim-treesitter-parsers.julia
    vimPlugins.nvim-treesitter-parsers.just
    vimPlugins.nvim-treesitter-parsers.kcl
    vimPlugins.nvim-treesitter-parsers.kconfig
    vimPlugins.nvim-treesitter-parsers.kdl
    vimPlugins.nvim-treesitter-parsers.kitty
    vimPlugins.nvim-treesitter-parsers.kos
    vimPlugins.nvim-treesitter-parsers.kotlin
    vimPlugins.nvim-treesitter-parsers.koto
    vimPlugins.nvim-treesitter-parsers.kusto
    vimPlugins.nvim-treesitter-parsers.lalrpop
    vimPlugins.nvim-treesitter-parsers.latex
    vimPlugins.nvim-treesitter-parsers.ledger
    vimPlugins.nvim-treesitter-parsers.leo
    vimPlugins.nvim-treesitter-parsers.linkerscript
    vimPlugins.nvim-treesitter-parsers.liquid
    vimPlugins.nvim-treesitter-parsers.liquidsoap
    vimPlugins.nvim-treesitter-parsers.llvm
    vimPlugins.nvim-treesitter-parsers.lua
    vimPlugins.nvim-treesitter-parsers.luadoc
    vimPlugins.nvim-treesitter-parsers.luap
    vimPlugins.nvim-treesitter-parsers.luau
    vimPlugins.nvim-treesitter-parsers.m68k
    vimPlugins.nvim-treesitter-parsers.make
    vimPlugins.nvim-treesitter-parsers.markdown
    vimPlugins.nvim-treesitter-parsers.markdown_inline
    vimPlugins.nvim-treesitter-parsers.matlab
    vimPlugins.nvim-treesitter-parsers.menhir
    vimPlugins.nvim-treesitter-parsers.mermaid
    vimPlugins.nvim-treesitter-parsers.meson
    vimPlugins.nvim-treesitter-parsers.mlir
    vimPlugins.nvim-treesitter-parsers.muttrc
    vimPlugins.nvim-treesitter-parsers.nasm
    vimPlugins.nvim-treesitter-parsers.nginx
    vimPlugins.nvim-treesitter-parsers.nickel
    vimPlugins.nvim-treesitter-parsers.nim
    vimPlugins.nvim-treesitter-parsers.nim_format_string
    vimPlugins.nvim-treesitter-parsers.ninja
    vimPlugins.nvim-treesitter-parsers.nix
    vimPlugins.nvim-treesitter-parsers.nqc
    vimPlugins.nvim-treesitter-parsers.nu
    vimPlugins.nvim-treesitter-parsers.objc
    vimPlugins.nvim-treesitter-parsers.objdump
    vimPlugins.nvim-treesitter-parsers.ocaml
    vimPlugins.nvim-treesitter-parsers.ocaml_interface
    vimPlugins.nvim-treesitter-parsers.ocamllex
    vimPlugins.nvim-treesitter-parsers.odin
    vimPlugins.nvim-treesitter-parsers.pascal
    vimPlugins.nvim-treesitter-parsers.passwd
    vimPlugins.nvim-treesitter-parsers.pem
    vimPlugins.nvim-treesitter-parsers.perl
    vimPlugins.nvim-treesitter-parsers.php
    vimPlugins.nvim-treesitter-parsers.php_only
    vimPlugins.nvim-treesitter-parsers.phpdoc
    vimPlugins.nvim-treesitter-parsers.pioasm
    vimPlugins.nvim-treesitter-parsers.pkl
    vimPlugins.nvim-treesitter-parsers.po
    vimPlugins.nvim-treesitter-parsers.pod
    vimPlugins.nvim-treesitter-parsers.poe_filter
    vimPlugins.nvim-treesitter-parsers.pony
    vimPlugins.nvim-treesitter-parsers.powershell
    vimPlugins.nvim-treesitter-parsers.printf
    vimPlugins.nvim-treesitter-parsers.prisma
    vimPlugins.nvim-treesitter-parsers.problog
    vimPlugins.nvim-treesitter-parsers.prolog
    vimPlugins.nvim-treesitter-parsers.promql
    vimPlugins.nvim-treesitter-parsers.properties
    vimPlugins.nvim-treesitter-parsers.proto
    vimPlugins.nvim-treesitter-parsers.prql
    vimPlugins.nvim-treesitter-parsers.psv
    vimPlugins.nvim-treesitter-parsers.pug
    vimPlugins.nvim-treesitter-parsers.puppet
    vimPlugins.nvim-treesitter-parsers.purescript
    vimPlugins.nvim-treesitter-parsers.pymanifest
    vimPlugins.nvim-treesitter-parsers.python
    vimPlugins.nvim-treesitter-parsers.ql
    vimPlugins.nvim-treesitter-parsers.qmldir
    vimPlugins.nvim-treesitter-parsers.qmljs
    vimPlugins.nvim-treesitter-parsers.query
    vimPlugins.nvim-treesitter-parsers.r
    vimPlugins.nvim-treesitter-parsers.racket
    vimPlugins.nvim-treesitter-parsers.ralph
    vimPlugins.nvim-treesitter-parsers.rasi
    vimPlugins.nvim-treesitter-parsers.razor
    vimPlugins.nvim-treesitter-parsers.rbs
    vimPlugins.nvim-treesitter-parsers.re2c
    vimPlugins.nvim-treesitter-parsers.readline
    vimPlugins.nvim-treesitter-parsers.regex
    vimPlugins.nvim-treesitter-parsers.rego
    vimPlugins.nvim-treesitter-parsers.requirements
    vimPlugins.nvim-treesitter-parsers.rescript
    vimPlugins.nvim-treesitter-parsers.rifleconf
    vimPlugins.nvim-treesitter-parsers.rnoweb
    vimPlugins.nvim-treesitter-parsers.robot
    vimPlugins.nvim-treesitter-parsers.robots_txt
    vimPlugins.nvim-treesitter-parsers.roc
    vimPlugins.nvim-treesitter-parsers.ron
    vimPlugins.nvim-treesitter-parsers.rst
    vimPlugins.nvim-treesitter-parsers.ruby
    vimPlugins.nvim-treesitter-parsers.runescript
    vimPlugins.nvim-treesitter-parsers.rust
    vimPlugins.nvim-treesitter-parsers.scala
    vimPlugins.nvim-treesitter-parsers.scfg
    vimPlugins.nvim-treesitter-parsers.scheme
    vimPlugins.nvim-treesitter-parsers.scss
    vimPlugins.nvim-treesitter-parsers.sflog
    vimPlugins.nvim-treesitter-parsers.slang
    vimPlugins.nvim-treesitter-parsers.slim
    vimPlugins.nvim-treesitter-parsers.slint
    vimPlugins.nvim-treesitter-parsers.smali
    vimPlugins.nvim-treesitter-parsers.smithy
    vimPlugins.nvim-treesitter-parsers.snakemake
    vimPlugins.nvim-treesitter-parsers.snl
    vimPlugins.nvim-treesitter-parsers.solidity
    vimPlugins.nvim-treesitter-parsers.soql
    vimPlugins.nvim-treesitter-parsers.sosl
    vimPlugins.nvim-treesitter-parsers.sourcepawn
    vimPlugins.nvim-treesitter-parsers.sparql
    vimPlugins.nvim-treesitter-parsers.sproto
    vimPlugins.nvim-treesitter-parsers.sql
    vimPlugins.nvim-treesitter-parsers.squirrel
    vimPlugins.nvim-treesitter-parsers.ssh_config
    vimPlugins.nvim-treesitter-parsers.starlark
    vimPlugins.nvim-treesitter-parsers.strace
    vimPlugins.nvim-treesitter-parsers.styled
    vimPlugins.nvim-treesitter-parsers.supercollider
    vimPlugins.nvim-treesitter-parsers.superhtml
    vimPlugins.nvim-treesitter-parsers.surface
    vimPlugins.nvim-treesitter-parsers.svelte
    vimPlugins.nvim-treesitter-parsers.sway
    vimPlugins.nvim-treesitter-parsers.swift
    vimPlugins.nvim-treesitter-parsers.sxhkdrc
    vimPlugins.nvim-treesitter-parsers.systemtap
    vimPlugins.nvim-treesitter-parsers.systemverilog
    vimPlugins.nvim-treesitter-parsers.t32
    vimPlugins.nvim-treesitter-parsers.tablegen
    vimPlugins.nvim-treesitter-parsers.tact
    vimPlugins.nvim-treesitter-parsers.tcl
    vimPlugins.nvim-treesitter-parsers.teal
    vimPlugins.nvim-treesitter-parsers.templ
    vimPlugins.nvim-treesitter-parsers.tera
    vimPlugins.nvim-treesitter-parsers.terraform
    vimPlugins.nvim-treesitter-parsers.textproto
    vimPlugins.nvim-treesitter-parsers.thrift
    vimPlugins.nvim-treesitter-parsers.tiger
    vimPlugins.nvim-treesitter-parsers.tlaplus
    vimPlugins.nvim-treesitter-parsers.tmux
    vimPlugins.nvim-treesitter-parsers.todotxt
    vimPlugins.nvim-treesitter-parsers.toml
    vimPlugins.nvim-treesitter-parsers.tsv
    vimPlugins.nvim-treesitter-parsers.tsx
    vimPlugins.nvim-treesitter-parsers.turtle
    vimPlugins.nvim-treesitter-parsers.twig
    vimPlugins.nvim-treesitter-parsers.typescript
    vimPlugins.nvim-treesitter-parsers.typespec
    vimPlugins.nvim-treesitter-parsers.typoscript
    vimPlugins.nvim-treesitter-parsers.typst
    vimPlugins.nvim-treesitter-parsers.udev
    vimPlugins.nvim-treesitter-parsers.ungrammar
    vimPlugins.nvim-treesitter-parsers.unison
    vimPlugins.nvim-treesitter-parsers.usd
    vimPlugins.nvim-treesitter-parsers.uxntal
    vimPlugins.nvim-treesitter-parsers.v
    vimPlugins.nvim-treesitter-parsers.vala
    vimPlugins.nvim-treesitter-parsers.vento
    vimPlugins.nvim-treesitter-parsers.vhdl
    vimPlugins.nvim-treesitter-parsers.vhs
    vimPlugins.nvim-treesitter-parsers.vim
    vimPlugins.nvim-treesitter-parsers.vimdoc
    vimPlugins.nvim-treesitter-parsers.vrl
    vimPlugins.nvim-treesitter-parsers.vue
    vimPlugins.nvim-treesitter-parsers.wgsl
    vimPlugins.nvim-treesitter-parsers.wgsl_bevy
    vimPlugins.nvim-treesitter-parsers.wing
    vimPlugins.nvim-treesitter-parsers.wit
    vimPlugins.nvim-treesitter-parsers.wxml
    vimPlugins.nvim-treesitter-parsers.xcompose
    vimPlugins.nvim-treesitter-parsers.xml
    vimPlugins.nvim-treesitter-parsers.xresources
    vimPlugins.nvim-treesitter-parsers.yaml
    vimPlugins.nvim-treesitter-parsers.yang
    vimPlugins.nvim-treesitter-parsers.yuck
    vimPlugins.nvim-treesitter-parsers.zathurarc
    vimPlugins.nvim-treesitter-parsers.zig
    vimPlugins.nvim-treesitter-parsers.ziggy
    vimPlugins.nvim-treesitter-parsers.ziggy_schema
    vimPlugins.nvim-treesitter-parsers.zsh
    vimPlugins.nvim-treesitter-pyfold
    vimPlugins.nvim-treesitter-refactor
    vimPlugins.nvim-treesitter-sexp
    vimPlugins.nvim-treesitter-textobjects
    vimPlugins.nvim-treesitter-textobjects-legacy
    vimPlugins.nvim-treesitter-textsubjects
    vimPlugins.treesitter-modules-nvim

    virt-manager
    virt-top
    virter
    virtiofsd
    visidata
    vit
    vivid
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
    whipper
    wireguard-tools
    wl-clipboard
    wl-clip-persist
    # wl-screenrec
    wlogout
    wlsunset
    wofi
    wpgtk
    xan
    wsdd
    wshowkeys
    xkcd-font
    xkcdpass
    yarn
    yazi
    zathura
    #zed-editor
    zellij
    #    zenmonitor
    zoxide
    deno
    yt-dlp
    zip
    zlib
    zstd
  ];
}
