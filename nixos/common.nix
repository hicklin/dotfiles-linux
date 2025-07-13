{pkgs, ...}:

let
  # Import unstable channel.
  # sudo nix-channel --add http://nixos.org/channels/nixos-unstable nixos-unstable
  # sudo nix-channel --update nixos-unstable
  unstable = import <nixos-unstable> {};
in 

{
  environment.systemPackages = with pkgs; [
      bat
      bottom
      curl
      devenv
      git
      htop
      gtop
      lshw
      nix-index
      nmap
      p7zip
      pkg-config
      sshfs
      tmux
      wget
      which
      zellij
      zip
      brave
      signal-desktop
      gimp3
      inkscape
      obsidian
      spotify
      vscode
      vscode-extensions.rust-lang.rust-analyzer
      meld
      vlc
      terminator
      tree
    ];
  
  # Add the minimal required C library for most binaries
  # https://nix.dev/guides/faq#how-to-run-non-nix-executables
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc             # C/C++ standard libraries (libc, libstdc++)
    zlib                     # compression support
    bzip2                    # .bz2 support
    xz                       # .xz and .lzma support
    libxcrypt                # for crypt() and password functions
    libuuid                  # UUID handling
    openssl                  # SSL/TLS (libssl, libcrypto)
    curl                     # libcurl (for networking)
    libxml2                  # XML parsing (common dependency)
    expat                    # another XML parser
    icu                      # Unicode support
    gmp                      # arbitrary precision arithmetic
    libffi                   # Foreign Function Interface (used by Python, etc.)
    ncurses                  # terminal UI support (used by many CLI tools)
    readline                 # command-line input editing
    util-linux               # for libuuid, libmount, etc.
    libcap                   # for setting capabilities on executables
    dbus                     # sometimes used even in headless environments
    systemd                  # for libudev and libsystemd (common deps)
    gcc-unwrapped            # libgcc_s and related runtime bits
  ];

  # Auto upgrades of packages from time to time
  system.autoUpgrade.enable = true;
  
  # Automated weekly garbage collection
  nix = {
    gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 14d";
   }; 
  };

  users.users.hicklin.extraGroups = [ "dialout" ];

}
