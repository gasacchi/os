{ pkgs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        ../../modules/default.nix
    ];

    networking.hostName = "t440p";

    # t440p specific
    # hardware.cpu.intel.updateMicrocode = true;
    # services.libinput.enable = true;
    

    # additional packages
    environment.systemPackages = with pkgs;
    [
    ];

    # Dont edit line below!!!
    system.stateVersion = "25.05";
}

