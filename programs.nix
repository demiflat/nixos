{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}:
{
  programs = {
    appimage = {
      enable = true;
      binfmt = true;
    };
    uwsm.enable = true;
    #    regreet = {
    #  enable = true;
    #  theme.name = "Canta-dark";
    #  font.name = "roboto-mono";
    #  font.size = 22;
    #  iconTheme.name = "elementary-xfce-icon-theme";
    #  cursorTheme.name = "nordzy-cursor-theme";
    #  settings = {
    #    background = {
    #      #path = "${pkgs.nixos-artwork.wallpapers.stripes}/share/backgrounds/nixos/nix-wallpaper-stripes.png";
    #      #path = "${pkgs.nixos-artwork.wallpapers.stripes.gnomeFilePath} }";
    #      path = "/nix/store/9dv4n8qajmbjd7k1yxrnw6q6hs7pxzzy-nix-wallpaper-stripes.png";
    #      #fit = "Fill";
    #      fit = "Cover";
    #    };
    #  };
    #  extraCss = "box#body {
    #      background-color: rgba(46, 139, 87, 0.8);
    #      border-radius: 10px;
    #      padding: 50px;
    #    }";
    #};
    steam.enable = true;
    nix-ld.enable = true;
    bcc.enable = true;
    #broken in unstable
    #sysdig.enable = true;
    dconf.enable = true;
    dconf.profiles.user.databases = [
      {
        settings."org/gnome/desktop/interface" = {
          gtk-theme = "Adwaita";
          #gtk-theme = "Mojave-Dark";
          #icon-theme = "Flat-Remix-Red-Dark";
          icon-theme = "Adwaita";
          font-name = "Noto Sans Medium 11";
          document-font-name = "Noto Sans Medium 11";
          monospace-font-name = "Noto Sans Mono Medium 11";
        };
      }
    ];
    direnv.enable = true;
    mtr.enable = true;
    wireshark.enable = true;
    iotop.enable = true;
    iftop.enable = true;
    # nixvim.enable = true;
    #neovim = {
    #  enable = true;
    #  defaultEditor = true;
    #  viAlias = true;
    #  vimAlias = true;
    #    plugins = [
    #      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
    #    ];
    #};
    nvf = {
      enable = true;
      enableManpages = true;
      settings = {
        vim.lsp.servers.nixd.settings.nil.nix.autoArchive = true;
        vim = {
          viAlias = true;
          vimAlias = true;
          options = {
            expandtab = true;
            tabstop = 4;
            shiftwidth = 2;
            mouse = "a";
            relativenumber = false;
          };
          binds = {
            cheatsheet.enable = true;
            whichKey.enable = true;
          };
          theme = {
            enable = true;
            #name = "gruvbox";
            name = "tokyonight";
            style = "night";
          };
          clipboard = {
            registers = "unnamed,unnamedplus";
            providers = {
              wl-copy = {
                enable = true;
              };
            };
          };
          lsp = {
            enable = true;
          };
          languages = {
            enableDAP = true;
            enableTreesitter = true;
            go = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
              dap = {
                enable = true;
              };
            };
            html = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            json = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            lua = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            markdown = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            nix = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            python = {
              enable = true;
              dap = {
                enable = true;
              };
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            qml = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            r = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            ruby = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            rust = {
              enable = true;
              dap = {
                enable = true;
              };
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            sql = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            yaml = {
              enable = true;
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
            zig = {
              enable = true;
              dap = {
                enable = true;
              };
              treesitter = {
                enable = true;
              };
              lsp = {
                enable = true;
              };
            };
          };
          fzf-lua = {
            enable = true;
            profile = "fzf-native";
          };
          telescope = {
            enable = true;
            extensions = [
              {
                name = "fzf";
                packages = [ pkgs.vimPlugins.telescope-fzf-native-nvim ];
                setup = {
                  fzf = {
                    fuzzy = true;
                  };
                };
              }
            ];
          };
          git = {
            enable = true;
            git-conflict = {
              enable = true;
            };
          };
          treesitter = {
            enable = true;
            grammars = [

              pkgs.vimPlugins.nvim-treesitter-parsers.arduino
              pkgs.vimPlugins.nvim-treesitter-parsers.asm
              pkgs.vimPlugins.nvim-treesitter-parsers.awk
              pkgs.vimPlugins.nvim-treesitter-parsers.bash
              pkgs.vimPlugins.nvim-treesitter-parsers.bpftrace
              pkgs.vimPlugins.nvim-treesitter-parsers.c
              pkgs.vimPlugins.nvim-treesitter-parsers.caddy
              pkgs.vimPlugins.nvim-treesitter-parsers.cmake
              pkgs.vimPlugins.nvim-treesitter-parsers.comment
              pkgs.vimPlugins.nvim-treesitter-parsers.commonlisp
              pkgs.vimPlugins.nvim-treesitter-parsers.cooklang
              pkgs.vimPlugins.nvim-treesitter-parsers.cpp
              pkgs.vimPlugins.nvim-treesitter-parsers.css
              pkgs.vimPlugins.nvim-treesitter-parsers.csv
              pkgs.vimPlugins.nvim-treesitter-parsers.cuda
              pkgs.vimPlugins.nvim-treesitter-parsers.cue
              pkgs.vimPlugins.nvim-treesitter-parsers.desktop
              pkgs.vimPlugins.nvim-treesitter-parsers.devicetree
              pkgs.vimPlugins.nvim-treesitter-parsers.dhall
              pkgs.vimPlugins.nvim-treesitter-parsers.diff
              pkgs.vimPlugins.nvim-treesitter-parsers.disassembly
              pkgs.vimPlugins.nvim-treesitter-parsers.dockerfile
              pkgs.vimPlugins.nvim-treesitter-parsers.dot
              pkgs.vimPlugins.nvim-treesitter-parsers.dtd
              pkgs.vimPlugins.nvim-treesitter-parsers.ebnf
              pkgs.vimPlugins.nvim-treesitter-parsers.editorconfig
              pkgs.vimPlugins.nvim-treesitter-parsers.erlang
              pkgs.vimPlugins.nvim-treesitter-parsers.fish
              pkgs.vimPlugins.nvim-treesitter-parsers.forth
              pkgs.vimPlugins.nvim-treesitter-parsers.git_config
              #              pkgs.vimPlugins.nvim-treesitter-parsers.git_rebase
              pkgs.vimPlugins.nvim-treesitter-parsers.gitattributes
              pkgs.vimPlugins.nvim-treesitter-parsers.gitcommit
              pkgs.vimPlugins.nvim-treesitter-parsers.gitignore
              pkgs.vimPlugins.nvim-treesitter-parsers.gnuplot
              pkgs.vimPlugins.nvim-treesitter-parsers.go
              pkgs.vimPlugins.nvim-treesitter-parsers.gomod
              pkgs.vimPlugins.nvim-treesitter-parsers.gosum
              pkgs.vimPlugins.nvim-treesitter-parsers.gotmpl
              pkgs.vimPlugins.nvim-treesitter-parsers.gowork
              pkgs.vimPlugins.nvim-treesitter-parsers.gpg
              pkgs.vimPlugins.nvim-treesitter-parsers.graphql
              pkgs.vimPlugins.nvim-treesitter-parsers.groovy
              pkgs.vimPlugins.nvim-treesitter-parsers.hare
              pkgs.vimPlugins.nvim-treesitter-parsers.hcl
              pkgs.vimPlugins.nvim-treesitter-parsers.helm
              pkgs.vimPlugins.nvim-treesitter-parsers.hjson
              pkgs.vimPlugins.nvim-treesitter-parsers.html
              pkgs.vimPlugins.nvim-treesitter-parsers.http
              pkgs.vimPlugins.nvim-treesitter-parsers.hyprlang
              pkgs.vimPlugins.nvim-treesitter-parsers.idl
              pkgs.vimPlugins.nvim-treesitter-parsers.ini
              pkgs.vimPlugins.nvim-treesitter-parsers.java
              pkgs.vimPlugins.nvim-treesitter-parsers.javadoc
              pkgs.vimPlugins.nvim-treesitter-parsers.javascript
              pkgs.vimPlugins.nvim-treesitter-parsers.jinja
              pkgs.vimPlugins.nvim-treesitter-parsers.jinja_inline
              pkgs.vimPlugins.nvim-treesitter-parsers.jq
              pkgs.vimPlugins.nvim-treesitter-parsers.jsdoc
              pkgs.vimPlugins.nvim-treesitter-parsers.json
              pkgs.vimPlugins.nvim-treesitter-parsers.json5
              pkgs.vimPlugins.nvim-treesitter-parsers.jsonnet
              pkgs.vimPlugins.nvim-treesitter-parsers.just
              pkgs.vimPlugins.nvim-treesitter-parsers.kitty
              pkgs.vimPlugins.nvim-treesitter-parsers.kotlin
              pkgs.vimPlugins.nvim-treesitter-parsers.latex
              pkgs.vimPlugins.nvim-treesitter-parsers.linkerscript
              pkgs.vimPlugins.nvim-treesitter-parsers.llvm
              pkgs.vimPlugins.nvim-treesitter-parsers.lua
              pkgs.vimPlugins.nvim-treesitter-parsers.luadoc
              pkgs.vimPlugins.nvim-treesitter-parsers.make
              pkgs.vimPlugins.nvim-treesitter-parsers.markdown
              pkgs.vimPlugins.nvim-treesitter-parsers.markdown_inline
              pkgs.vimPlugins.nvim-treesitter-parsers.meson
              pkgs.vimPlugins.nvim-treesitter-parsers.mlir
              pkgs.vimPlugins.nvim-treesitter-parsers.muttrc
              pkgs.vimPlugins.nvim-treesitter-parsers.nasm
              pkgs.vimPlugins.nvim-treesitter-parsers.nginx
              pkgs.vimPlugins.nvim-treesitter-parsers.ninja
              pkgs.vimPlugins.nvim-treesitter-parsers.nix
              pkgs.vimPlugins.nvim-treesitter-parsers.nu
              pkgs.vimPlugins.nvim-treesitter-parsers.objc
              pkgs.vimPlugins.nvim-treesitter-parsers.objdump
              pkgs.vimPlugins.nvim-treesitter-parsers.passwd
              pkgs.vimPlugins.nvim-treesitter-parsers.pem
              pkgs.vimPlugins.nvim-treesitter-parsers.perl
              pkgs.vimPlugins.nvim-treesitter-parsers.php
              pkgs.vimPlugins.nvim-treesitter-parsers.php_only
              pkgs.vimPlugins.nvim-treesitter-parsers.phpdoc
              pkgs.vimPlugins.nvim-treesitter-parsers.pioasm
              pkgs.vimPlugins.nvim-treesitter-parsers.printf
              pkgs.vimPlugins.nvim-treesitter-parsers.prolog
              pkgs.vimPlugins.nvim-treesitter-parsers.properties
              pkgs.vimPlugins.nvim-treesitter-parsers.proto
              pkgs.vimPlugins.nvim-treesitter-parsers.python
              pkgs.vimPlugins.nvim-treesitter-parsers.ql
              pkgs.vimPlugins.nvim-treesitter-parsers.qmldir
              pkgs.vimPlugins.nvim-treesitter-parsers.qmljs
              pkgs.vimPlugins.nvim-treesitter-parsers.query
              pkgs.vimPlugins.nvim-treesitter-parsers.r
              pkgs.vimPlugins.nvim-treesitter-parsers.racket
              pkgs.vimPlugins.nvim-treesitter-parsers.readline
              pkgs.vimPlugins.nvim-treesitter-parsers.regex
              pkgs.vimPlugins.nvim-treesitter-parsers.rego
              pkgs.vimPlugins.nvim-treesitter-parsers.requirements
              pkgs.vimPlugins.nvim-treesitter-parsers.robots_txt
              pkgs.vimPlugins.nvim-treesitter-parsers.rst
              pkgs.vimPlugins.nvim-treesitter-parsers.ruby
              pkgs.vimPlugins.nvim-treesitter-parsers.rust
              pkgs.vimPlugins.nvim-treesitter-parsers.scala
              pkgs.vimPlugins.nvim-treesitter-parsers.scheme
              pkgs.vimPlugins.nvim-treesitter-parsers.scss
              pkgs.vimPlugins.nvim-treesitter-parsers.sql
              pkgs.vimPlugins.nvim-treesitter-parsers.ssh_config
              pkgs.vimPlugins.nvim-treesitter-parsers.strace
              pkgs.vimPlugins.nvim-treesitter-parsers.superhtml
              pkgs.vimPlugins.nvim-treesitter-parsers.svelte
              pkgs.vimPlugins.nvim-treesitter-parsers.sway
              pkgs.vimPlugins.nvim-treesitter-parsers.swift
              pkgs.vimPlugins.nvim-treesitter-parsers.systemtap
              pkgs.vimPlugins.nvim-treesitter-parsers.systemverilog
              pkgs.vimPlugins.nvim-treesitter-parsers.tcl
              pkgs.vimPlugins.nvim-treesitter-parsers.templ
              pkgs.vimPlugins.nvim-treesitter-parsers.terraform
              pkgs.vimPlugins.nvim-treesitter-parsers.textproto
              pkgs.vimPlugins.nvim-treesitter-parsers.thrift
              pkgs.vimPlugins.nvim-treesitter-parsers.tlaplus
              #              pkgs.vimPlugins.nvim-treesitter-parsers.tmux
              pkgs.vimPlugins.nvim-treesitter-parsers.todotxt
              pkgs.vimPlugins.nvim-treesitter-parsers.toml
              pkgs.vimPlugins.nvim-treesitter-parsers.tsv
              pkgs.vimPlugins.nvim-treesitter-parsers.typescript
              pkgs.vimPlugins.nvim-treesitter-parsers.udev
              pkgs.vimPlugins.nvim-treesitter-parsers.vhdl
              pkgs.vimPlugins.nvim-treesitter-parsers.vim
              pkgs.vimPlugins.nvim-treesitter-parsers.vimdoc
              pkgs.vimPlugins.nvim-treesitter-parsers.xml
              pkgs.vimPlugins.nvim-treesitter-parsers.yaml
              pkgs.vimPlugins.nvim-treesitter-parsers.zig
              pkgs.vimPlugins.nvim-treesitter-parsers.zsh
            ];
          };
        };
      };

    };

    ssh.startAgent = true;
    gnupg.agent = {
      enable = true;
      #enableSSHSupport = true;
      enableBrowserSocket = true;
      pinentryPackage = pkgs.pinentry-curses;
    };

    bash.vteIntegration = true;

    chromium.enable = true;
    criu.enable = true;
    evince.enable = true;
    #    file-roller.enable = true;
    firefox.enable = true;
    git.enable = true;
    git.prompt.enable = true;
    htop.enable = true;
    mosh.enable = true;

    #  sway.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
    hyprlock.enable = true;
    waybar.enable = true;
    fish.enable = true;

    # Avoid TOFU MITM with github by providing their public key here.
    ssh.knownHosts = {
      "github.com".hostNames = [ "github.com" ];
      "github.com".publicKey =
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl";

      "gitlab.com".hostNames = [ "gitlab.com" ];
      "gitlab.com".publicKey =
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAfuCHKVTjquxvt6CM6tdG4SLp1Btn/nOeHHE5UOzRdf";

      "git.sr.ht".hostNames = [ "git.sr.ht" ];
      "git.sr.ht".publicKey =
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMZvRd4EtM7R+IHVMWmDkVU3VLQTSwQDSAvW0t2Tkj60";
    };
    # post quantum
    #ssh.kexAlgorithms = config.services.openssh.settings.KexAlgorithms;
  };
}
