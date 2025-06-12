{ pkgs, ... }:

{
    hardware.bluetooth.enable = true;
    services =
    {
        displayManager.sddm =
        {
            enable = true;
            wayland.enable = true;
            settings.General.DisplayServer = "wayland";
        };
        desktopManager.plasma6.enable = true;
    };

    environment.plasma6.excludePackages = with pkgs.kdePackages;
    [
        ark
        elisa
        gwenview
        kate
        konsole
        okular
    ];
}
