{ pkgs, ... }:

{
    hardware.bluetooth.enable = true;
    services =
    {
        displayManager.cosmic-greeter.enable = true;
        desktopManager.cosmic.enable = true;
        system76-scheduler.enable = true;
    };

    environment.plasma6.excludePackages = with pkgs.kdePackages;
    [
    ];
}
