{ lib, ... }:

{
    networking.networkmanager.enable = true;
    networking.firewall.enable = true;
    networking.extraHosts = lib.readFile ../dotfiles/.config/hosts;
    services.openssh.enable = true;    
}
