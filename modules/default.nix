{
    imports =
    [
        ./boot.nix
        ./kanata.nix
        ./cosmic.nix
        ./locale.nix
        ./networking.nix
        ./packages.nix
        ./sound.nix
        ./security.nix
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
