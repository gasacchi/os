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
    hardware.graphics =
    {
        enable = true;
        enable32Bit = true;
    };
    hardware.bluetooth =
    {
        enable = true;
        powerOnBoot = true;
        settings =
        {
            General =
            {
                Enable = "Source,Sink,Media,Socket";
            };
        };
    };
    services.blueman.enable = true;
    boot =
    {
        extraModprobeConfig = ''
            options bbswitch use_acpi_to_detect_card_state=1
            options thinkpad_acpi force_load=1 fan_control=1
        '';
    };

    # additional packages
    environment.systemPackages = with pkgs;
    [
    ];

    # Dont edit line below!!!
    system.stateVersion = "25.05";
}

