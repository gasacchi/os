{ pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    # System Packages
    environment.systemPackages = with pkgs;
    [
        git  
        helix
    ];

    # Fonts
    fonts.packages = with pkgs;
    [
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
    ];

    # User Packages
    users.users.gasacchi.packages = with pkgs;
    [
        # terminal
        delta
        ghostty
        just
        stow
        vivid
        # uutils-coreutils-noprefix
        # ripgrep
        # ripgrep-all
        # fd
        bat
        eza
        # zoxide
        # xh
        # gitui
        # dust
        hyperfine
        tokei
        unzip
        unrar
        wget
        wl-clipboard

        # develompment
        clang
        nixd

        # apps
        brave
        # qbittorrent
        # vlc
        # vlc
    ];
}
