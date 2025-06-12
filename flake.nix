{
    description = "OS Configuration";

    inputs =
    {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { nixpkgs, ... }:
        let
            lib = nixpkgs.lib;
        in
        {
            nixosConfigurations =
            {
                t440p = lib.nixosSystem {
                    system = "x86_64-linux";
                    modules =
                    [
                        ./hosts/t440p/configuration.nix
                    ];
                };
            };
        };
}
