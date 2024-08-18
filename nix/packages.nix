{ pkgs, ... }: {
  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "python-2.7.18.8" ];
  };

  # Install firefox
  programs.firefox.enable = true;

  # Install neovim
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Install hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Install Zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  services = {
    syncthing = {
      enable = true;
      user = "zenoix";
      dataDir = "/home/zenoix/Documents";    # Default folder for new synced folders
      configDir = "/home/zenoix/dotfiles/.config/syncthing";   # Folder for Syncthing's settings and keys
    };
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Desktop apps
    discord
    libreoffice-qt
    anki-bin

    # Coding stuff
    (python3.withPackages (ps: with ps; [ requests ]))
    R
    gcc
    gnumake
    go
    kitty
    nodejs
    python

    # CLI stuff
    brightnessctl
    fastfetch
    fd
    ffmpeg
    fzf
    git
    htop
    neofetch
    openssl
    ripgrep
    starship
    tmux
    tree
    unzip
    wget
    zip
    zoxide

    # Wayland stuff
    wl-clipboard
    cliphist

    # WM
    hyprlock
    xdg-desktop-portal-hyprland
    rofi-wayland
    waybar

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Screenshotting
    grim
    slurp

  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    nerdfonts
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}

