{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}:
{
  programs = {
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
    sysdig.enable = true;
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
      settings = {
        vim.theme.enable = true;
        vim.theme.name = "gruvbox";
        vim.theme.style = "dark";
      };
      vim = {
        viAlias = true;
        vimAlias = true;
        options = {
          expandtab = true;
          tabstop = 4;
          shiftwidth = 2;
          mouse = "a";
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
        treesitter = {
          enable = true;
          grammars = [

            "awk"
            "bash"
            "caddyfile"
            "cmake"
            "commonlisp"
            "cpp"
            "css"
            "csv"
            "cuda"
            "cue"
            "debian"
            "devicetree"
            "dhall"
            "diff"
            "dockerfile"
            "dot"
            "dtd"
            "erlang"
            "fish"
            "forth"
            "ghostty"
            "gitattributes"
            "gitcommit"
            "git-config"
            "gitignore"
            "git-rebase"
            "go"
            "go-template"
            "gotmpl"
            "gowork"
            "graphql"
            "hjson"
            "hosts"
            "html"
            "ini"
            "java"
            "javascript"
            "jinja2"
            "jq"
            "json"
            "json5"
            "jsonnet"
            "just"
            "kotlin"
            "latex"
            "ld"
            "ldif"
            "llvm"
            "llvm-mir"
            "log"
            "lua"
            "luau"
            "make"
            "markdown"
            "markdown-inline"
            "meson"
            "mojo"
            "nasm"
            "nginx"
            "nix"
            "nu"
            "opencl"
            "openscad"
            "org"
            "org-nvim"
            "passwd"
            "pem"
            "perl"
            "php"
            "phpdoc"
            "pioasm"
            "powershell"
            "prolog"
            "properties"
            "proto"
            "python"
            "readline"
            "regex"
            "river"
            "rust"
            "rust-format-args"
            "scala"
            "scheme"
            "scss"
            "sql"
            "strace"
            "svelte"
            "sway"
            "swift"
            "tcl"
            "todotxt"
            "toml"
            "typescript"
            "vala"
            "verilog"
            "vhdl"
            "vim"
            "xml"
            "yaml"
            "zig"
          ];
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
