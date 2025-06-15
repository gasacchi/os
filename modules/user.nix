{ pkgs, ... }:

{
    programs.fish.enable = true;
    environment.variables.EDITOR = "hx";
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
