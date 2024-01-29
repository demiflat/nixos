{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
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
    cliphist
    clipman
    clolcat
    colordiff
    copyq
    cri-o
    cri-tools
    criu
    crun
    ddcutil
    debootstrap
    delta
    detox
    diffuse
    difftastic
    dig
    dina-font
    dive
    doublecmd
    duf
    easyeffects
    gnomeExtensions.easyeffects-preset-selector
    envsubst
    eternal-terminal
    evtest
    fastfetch
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
    gedit
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
    gping
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
    # xdg-desktop-portal-gtk

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
    libnotify
    librewolf-wayland
    libreoffice-fresh
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtwayland
    libvirt
    light
    links2
    litestream
    logitech-udev-rules
    lsd
    ltunify
    luajit
    lunarvim
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
    nvtop-amd
    openocd
    openssl
    #openvswitch
    p7zip
    pass
    perf-tools
    plasma-theme-switcher
    planify
    platformio
    platformio-core
    podman
    podman-compose
    podman-tui
    profont
    pstree
    pulseaudio
    pv
    pwgen

    python3Full
    python311Packages.pip

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
    skopeo
    socat
    spacevim
    sqlite
    sqlitebrowser
    strace
    sudo-font
    sway
    swaylock-effects
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
    udiskie
    unzip
    unpaper
    unrar
    usbtop
    usbutils
    ustreamer
    utterly-nord-plasma
    via
    vimPlugins.nvim-treesitter
    vimPlugins.nvim-treesitter-context
    vimPlugins.nvim-treesitter-endwise
    vimPlugins.nvim-treesitter-parsers.ada
    vimPlugins.nvim-treesitter-parsers.agda
    vimPlugins.nvim-treesitter-parsers.angular
    vimPlugins.nvim-treesitter-parsers.apex
    vimPlugins.nvim-treesitter-parsers.arduino
    vimPlugins.nvim-treesitter-parsers.astro
    vimPlugins.nvim-treesitter-parsers.authzed
    vimPlugins.nvim-treesitter-parsers.awk
    vimPlugins.nvim-treesitter-parsers.bash
    vimPlugins.nvim-treesitter-parsers.bass
    vimPlugins.nvim-treesitter-parsers.beancount
    vimPlugins.nvim-treesitter-parsers.bibtex
    vimPlugins.nvim-treesitter-parsers.bicep
    vimPlugins.nvim-treesitter-parsers.bitbake
    vimPlugins.nvim-treesitter-parsers.blueprint
    vimPlugins.nvim-treesitter-parsers.c
    vimPlugins.nvim-treesitter-parsers.c_sharp
    vimPlugins.nvim-treesitter-parsers.cairo
    vimPlugins.nvim-treesitter-parsers.capnp
    vimPlugins.nvim-treesitter-parsers.chatito
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
    vimPlugins.nvim-treesitter-parsers.d
    vimPlugins.nvim-treesitter-parsers.dart
    vimPlugins.nvim-treesitter-parsers.devicetree
    vimPlugins.nvim-treesitter-parsers.dhall
    vimPlugins.nvim-treesitter-parsers.diff
    vimPlugins.nvim-treesitter-parsers.dockerfile
    vimPlugins.nvim-treesitter-parsers.dot
    vimPlugins.nvim-treesitter-parsers.doxygen
    vimPlugins.nvim-treesitter-parsers.dtd
    vimPlugins.nvim-treesitter-parsers.ebnf
    vimPlugins.nvim-treesitter-parsers.eds
    vimPlugins.nvim-treesitter-parsers.eex
    vimPlugins.nvim-treesitter-parsers.elixir
    vimPlugins.nvim-treesitter-parsers.elm
    vimPlugins.nvim-treesitter-parsers.elsa
    vimPlugins.nvim-treesitter-parsers.elvish
    vimPlugins.nvim-treesitter-parsers.embedded_template
    vimPlugins.nvim-treesitter-parsers.erlang
    vimPlugins.nvim-treesitter-parsers.facility
    vimPlugins.nvim-treesitter-parsers.fennel
    vimPlugins.nvim-treesitter-parsers.firrtl
    vimPlugins.nvim-treesitter-parsers.fish
    vimPlugins.nvim-treesitter-parsers.foam
    vimPlugins.nvim-treesitter-parsers.forth
    vimPlugins.nvim-treesitter-parsers.fortran
    vimPlugins.nvim-treesitter-parsers.fsh
    vimPlugins.nvim-treesitter-parsers.func
    vimPlugins.nvim-treesitter-parsers.fusion
    vimPlugins.nvim-treesitter-parsers.gdscript
    vimPlugins.nvim-treesitter-parsers.git_config
    vimPlugins.nvim-treesitter-parsers.git_rebase
    vimPlugins.nvim-treesitter-parsers.gitattributes
    vimPlugins.nvim-treesitter-parsers.gitcommit
    vimPlugins.nvim-treesitter-parsers.gitignore
    vimPlugins.nvim-treesitter-parsers.gleam
    vimPlugins.nvim-treesitter-parsers.glimmer
    vimPlugins.nvim-treesitter-parsers.glsl
    vimPlugins.nvim-treesitter-parsers.gn
    vimPlugins.nvim-treesitter-parsers.go
    vimPlugins.nvim-treesitter-parsers.godot_resource
    vimPlugins.nvim-treesitter-parsers.gomod
    vimPlugins.nvim-treesitter-parsers.gosum
    vimPlugins.nvim-treesitter-parsers.gowork
    vimPlugins.nvim-treesitter-parsers.gpg
    vimPlugins.nvim-treesitter-parsers.graphql
    vimPlugins.nvim-treesitter-parsers.groovy
    vimPlugins.nvim-treesitter-parsers.gstlaunch
    vimPlugins.nvim-treesitter-parsers.hack
    vimPlugins.nvim-treesitter-parsers.hare
    vimPlugins.nvim-treesitter-parsers.haskell
    vimPlugins.nvim-treesitter-parsers.haskell_persistent
    vimPlugins.nvim-treesitter-parsers.hcl
    vimPlugins.nvim-treesitter-parsers.heex
    vimPlugins.nvim-treesitter-parsers.hjson
    vimPlugins.nvim-treesitter-parsers.hlsl
    vimPlugins.nvim-treesitter-parsers.hocon
    vimPlugins.nvim-treesitter-parsers.hoon
    vimPlugins.nvim-treesitter-parsers.html
    vimPlugins.nvim-treesitter-parsers.htmldjango
    vimPlugins.nvim-treesitter-parsers.http
    vimPlugins.nvim-treesitter-parsers.hurl
    vimPlugins.nvim-treesitter-parsers.ini
    vimPlugins.nvim-treesitter-parsers.ispc
    vimPlugins.nvim-treesitter-parsers.janet_simple
    vimPlugins.nvim-treesitter-parsers.java
    vimPlugins.nvim-treesitter-parsers.javascript
    vimPlugins.nvim-treesitter-parsers.jq
    vimPlugins.nvim-treesitter-parsers.jsdoc
    vimPlugins.nvim-treesitter-parsers.json
    vimPlugins.nvim-treesitter-parsers.json5
    vimPlugins.nvim-treesitter-parsers.jsonc
    vimPlugins.nvim-treesitter-parsers.jsonnet
    vimPlugins.nvim-treesitter-parsers.julia
    vimPlugins.nvim-treesitter-parsers.kconfig
    vimPlugins.nvim-treesitter-parsers.kdl
    vimPlugins.nvim-treesitter-parsers.kotlin
    vimPlugins.nvim-treesitter-parsers.kusto
    vimPlugins.nvim-treesitter-parsers.lalrpop
    vimPlugins.nvim-treesitter-parsers.latex
    vimPlugins.nvim-treesitter-parsers.ledger
    vimPlugins.nvim-treesitter-parsers.leo
    vimPlugins.nvim-treesitter-parsers.linkerscript
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
    vimPlugins.nvim-treesitter-parsers.nasm
    vimPlugins.nvim-treesitter-parsers.nickel
    vimPlugins.nvim-treesitter-parsers.nim
    vimPlugins.nvim-treesitter-parsers.nim_format_string
    vimPlugins.nvim-treesitter-parsers.ninja
    vimPlugins.nvim-treesitter-parsers.nix
    vimPlugins.nvim-treesitter-parsers.norg
    vimPlugins.nvim-treesitter-parsers.nqc
    vimPlugins.nvim-treesitter-parsers.objc
    vimPlugins.nvim-treesitter-parsers.objdump
    vimPlugins.nvim-treesitter-parsers.ocaml
    vimPlugins.nvim-treesitter-parsers.ocaml_interface
    vimPlugins.nvim-treesitter-parsers.ocamllex
    vimPlugins.nvim-treesitter-parsers.odin
    vimPlugins.nvim-treesitter-parsers.org
    vimPlugins.nvim-treesitter-parsers.pascal
    vimPlugins.nvim-treesitter-parsers.passwd
    vimPlugins.nvim-treesitter-parsers.pem
    vimPlugins.nvim-treesitter-parsers.perl
    vimPlugins.nvim-treesitter-parsers.php
    vimPlugins.nvim-treesitter-parsers.phpdoc
    vimPlugins.nvim-treesitter-parsers.pioasm
    vimPlugins.nvim-treesitter-parsers.po
    vimPlugins.nvim-treesitter-parsers.pod
    vimPlugins.nvim-treesitter-parsers.poe_filter
    vimPlugins.nvim-treesitter-parsers.pony
    vimPlugins.nvim-treesitter-parsers.printf
    vimPlugins.nvim-treesitter-parsers.prisma
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
    vimPlugins.nvim-treesitter-parsers.rasi
    vimPlugins.nvim-treesitter-parsers.rbs
    vimPlugins.nvim-treesitter-parsers.re2c
    vimPlugins.nvim-treesitter-parsers.regex
    vimPlugins.nvim-treesitter-parsers.rego
    vimPlugins.nvim-treesitter-parsers.requirements
    vimPlugins.nvim-treesitter-parsers.rnoweb
    vimPlugins.nvim-treesitter-parsers.robot
    vimPlugins.nvim-treesitter-parsers.ron
    vimPlugins.nvim-treesitter-parsers.rst
    vimPlugins.nvim-treesitter-parsers.ruby
    vimPlugins.nvim-treesitter-parsers.rust
    vimPlugins.nvim-treesitter-parsers.scala
    vimPlugins.nvim-treesitter-parsers.scfg
    vimPlugins.nvim-treesitter-parsers.scheme
    vimPlugins.nvim-treesitter-parsers.scss
    vimPlugins.nvim-treesitter-parsers.slang
    vimPlugins.nvim-treesitter-parsers.slint
    vimPlugins.nvim-treesitter-parsers.smali
    vimPlugins.nvim-treesitter-parsers.smithy
    vimPlugins.nvim-treesitter-parsers.snakemake
    vimPlugins.nvim-treesitter-parsers.solidity
    vimPlugins.nvim-treesitter-parsers.soql
    vimPlugins.nvim-treesitter-parsers.sosl
    vimPlugins.nvim-treesitter-parsers.sparql
    vimPlugins.nvim-treesitter-parsers.sql
    vimPlugins.nvim-treesitter-parsers.squirrel
    vimPlugins.nvim-treesitter-parsers.ssh_config
    vimPlugins.nvim-treesitter-parsers.starlark
    vimPlugins.nvim-treesitter-parsers.strace
    vimPlugins.nvim-treesitter-parsers.styled
    vimPlugins.nvim-treesitter-parsers.supercollider
    vimPlugins.nvim-treesitter-parsers.surface
    vimPlugins.nvim-treesitter-parsers.svelte
    vimPlugins.nvim-treesitter-parsers.swift
    vimPlugins.nvim-treesitter-parsers.sxhkdrc
    vimPlugins.nvim-treesitter-parsers.systemtap
    vimPlugins.nvim-treesitter-parsers.t32
    vimPlugins.nvim-treesitter-parsers.tablegen
    vimPlugins.nvim-treesitter-parsers.teal
    vimPlugins.nvim-treesitter-parsers.templ
    vimPlugins.nvim-treesitter-parsers.terraform
    vimPlugins.nvim-treesitter-parsers.textproto
    vimPlugins.nvim-treesitter-parsers.thrift
    vimPlugins.nvim-treesitter-parsers.tiger
    vimPlugins.nvim-treesitter-parsers.tlaplus
    vimPlugins.nvim-treesitter-parsers.todotxt
    vimPlugins.nvim-treesitter-parsers.toml
    vimPlugins.nvim-treesitter-parsers.tsv
    vimPlugins.nvim-treesitter-parsers.tsx
    vimPlugins.nvim-treesitter-parsers.turtle
    vimPlugins.nvim-treesitter-parsers.twig
    vimPlugins.nvim-treesitter-parsers.typescript
    vimPlugins.nvim-treesitter-parsers.typoscript
    vimPlugins.nvim-treesitter-parsers.udev
    vimPlugins.nvim-treesitter-parsers.ungrammar
    vimPlugins.nvim-treesitter-parsers.unison
    vimPlugins.nvim-treesitter-parsers.usd
    vimPlugins.nvim-treesitter-parsers.uxntal
    vimPlugins.nvim-treesitter-parsers.v
    vimPlugins.nvim-treesitter-parsers.vala
    vimPlugins.nvim-treesitter-parsers.verilog
    vimPlugins.nvim-treesitter-parsers.vhs
    vimPlugins.nvim-treesitter-parsers.vim
    vimPlugins.nvim-treesitter-parsers.vimdoc
    vimPlugins.nvim-treesitter-parsers.vue
    vimPlugins.nvim-treesitter-parsers.wgsl
    vimPlugins.nvim-treesitter-parsers.wgsl_bevy
    vimPlugins.nvim-treesitter-parsers.wing
    vimPlugins.nvim-treesitter-parsers.xcompose
    vimPlugins.nvim-treesitter-parsers.xml
    vimPlugins.nvim-treesitter-parsers.yaml
    vimPlugins.nvim-treesitter-parsers.yang
    vimPlugins.nvim-treesitter-parsers.yuck
    vimPlugins.nvim-treesitter-parsers.zig
    vimPlugins.nvim-treesitter-pyfold
    vimPlugins.nvim-treesitter-refactor
    vimPlugins.nvim-treesitter-textobjects
    vimPlugins.nvim-treesitter-textsubjects
    #vimPlugins.nvim-treesitter.withAllGrammars
    #vimPlugins.SpaceVim
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
    wl-clip-persist
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
