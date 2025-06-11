{ pkgs, ... }:

{
    programs.fish.enable = true;
    users.defaultUserShell = pkgs.fish;
    users.users.gasacchi =
    {
        isNormalUser = true;
        extraGroups =
        [
            "wheel"
            "networkmanager"
        ];
    };
}
