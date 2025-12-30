{ pkgs, ... }:

{
    hardware.bluetooth.enable = true;
    services =
    {
        displayManager.cosmic-greeter =
        {
            enable = true;
            wayland.enable = true;
            settings.General.DisplayServer = "wayland";
        };
        desktopManager.cosmic.enable = true;
        system76-system76-scheduler.enable = true;
    };

    environment.plasma6.excludePackages = with pkgs.kdePackages;
    [
    ];
}
