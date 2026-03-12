{ pkgs, lib, ... }:

{
    imports =
    [
        ./boot.nix
        ./kanata.nix
        ./kde_plasma.nix
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
}
