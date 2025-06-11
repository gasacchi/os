{ pkgs, ... }:

{
    # System Packages
    environment.systemPackages = with pkgs;
    [
        git  
        helix
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
        # hyperfine
        # tokei
        # unzip
        # unrar
        # wget

        # apps
        brave
        # qbittorrent
        # vlc
        # vlc
    ];
}
