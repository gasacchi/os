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
        nerd-fonts."m+"
    ];

    # User Packages
    users.users.gasacchi.packages = with pkgs;
    [
        # terminal
        bat                       # cat alternative
        bottom                    # better top
        delta                     # git page syntax highlighting
        dust                      # du alternative
        eza                       # ls alternative
        fastfetch                 # sys info
        fd                        # find alternative
        ghostty                   # termanal
        gitui                     # terminal git-ui
        hyperfine                 # benchmark tools
        just                      # command runner
        procs                     # better ps
        ripgrep                   # faster grep
        ripgrep-all               # ripgrep, but also for pdf etc
        scrcpy                    # mirror android
        starship                  # pretty prompt
        stow                      # managing dotfiles
        tokei                     # Line of code  counter
        # uutils-coreutils-noprefix # rewrite gnu
        unzip                     # unpack zip file
        unrar                     # unpack rar file
        vivid                     # generator for LS_COLORS
        # xh                        # tools for sending https requests
        wget                      # retrieving file using https / ftp
        wl-clipboard              # wayland clipboard
        zoxide                    # fast cd command
        yt-dlp                    # youtube downloader cli

        # develompment
        clang                     # C compiler
        # gdb                       # debugger
        nixd                      # nix language server
        # valgrind                  # memory leak and performance checker

        # apps
        brave                     # browser
        google-chrome
        vlc                       # video player
        qbittorrent               # torrent
        spotify                   # music
    ];
}
