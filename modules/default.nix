{ pkgs, lib, ... }:

{
    imports =
    [
        ./boot.nix
        ./kanata.nix
        # ./kde_plasma.nix
        ./locale.nix
        ./networking.nix
        ./packages.nix
        ./security.nix
        ./sound.nix
        ./timezone.nix
        ./user.nix
    ];
    # enable flakes
    nix.settings.experimental-features =
    [
        "nix-command"
        "flakes"
    ];

    ## KDE Plasma

    hardware.bluetooth.enable = true;
    services =
    {
        desktopManager.plasma6.enable = true;
        displayManager.plasma-login-manager.enable = true;
    };

    environment.plasma6.excludePackages =# with pkgs.kdePackages;
    [
    ];
}
