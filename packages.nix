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

    abcde
    abiword
    akkuPackages.scheme-langserver
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
    blocky
    blueberry
    bluetui
    bluetuith
    bluez-tools
    bottom
    #    brasero
    # broken
    broot
    btop
    buildah
    bun
    caddy
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
    dina-font
    diskus
    dive
    #    doublecmd
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
    #    flightgear
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
    hack-font
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
    impl
    imv
    #    input-remapper
    #    inputs.zen-browser.packages."${system}".twilight
    #    iotop
    iotop-c
    iperf3
    iproute2
    #isd
    isd
    jc
    #    jmtpfs
    jq
    jql
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
    lix
    llama-cpp
    lldb
    # llm
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
    ##nemo-with-extensions
    #    neovide
    neovim
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
    nerd-fonts.gohufont
    nerd-fonts.go-mono
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
    nodejs_20
    nordzy-cursor-theme
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    #    nrfutil
    ntfs3g
    numbat
    nushell
    #nvtopPackages.amd
    nwg-look
    #    ollama
    #ollama-rocm
    # openocd
    openocd
    openssl
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
    #    planify
    #    plasma-theme-switcher
    # platformio
    # platformio-core
    playerctl
    podman
    podman-compose
    podman-desktop
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
    #qt6.qtwayland
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
    solo2-cli
    # sommelier
    spice-gtk
    sqlite
    #    sqlitebrowser
    starship
    strace
    #streamlit
    sudo-font
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
    transmission_4
    transmission_4-gtk
    tree
    treesheets
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
    tree-sitter-grammars.tree-sitter-c-sharp
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
    tree-sitter-grammars.tree-sitter-gitattributes
    tree-sitter-grammars.tree-sitter-gitcommit
    tree-sitter-grammars.tree-sitter-git-config
    tree-sitter-grammars.tree-sitter-gitignore
    tree-sitter-grammars.tree-sitter-git-rebase
    tree-sitter-grammars.tree-sitter-gleam
    tree-sitter-grammars.tree-sitter-glimmer
    tree-sitter-grammars.tree-sitter-glsl
    tree-sitter-grammars.tree-sitter-gn
    tree-sitter-grammars.tree-sitter-go
    tree-sitter-grammars.tree-sitter-godot-resource
    tree-sitter-grammars.tree-sitter-gomod
    tree-sitter-grammars.tree-sitter-go-template
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
    tree-sitter-grammars.tree-sitter-phpdoc
    tree-sitter-grammars.tree-sitter-php-only
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
