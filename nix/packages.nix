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

  # Install starship
  programs.starship = {
    enable = true;
  };

  # Install Zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Desktop apps
    discord

    # Coding stuff
    kitty
    gnumake
    gcc
    nodejs
    python
    (python3.withPackages (ps: with ps; [ requests ]))

    # CLI stuff
    neofetch
    tree
    wget
    git
    fastfetch
    htop
    unzip
    ffmpeg
    zip
    brightnessctl
    openssl
    tmux

    # Wayland stuff
    wl-clipboard
    cliphist

    # WM
    xdg-desktop-portal-hyprland
    waybar

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Screenshotting
    grim
    slurp

    # Fonts
    nerdfonts
  ];
}
