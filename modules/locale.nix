{ pkgs, ... }:

{
    i18n.defaultLocale = "en_US.UTF-8";

    # japanese input
    i18n.inputMethod = {
        enable = true;
        type = "fcitx5";
        fcitx5.addons = with pkgs;
        [
            fcitx5-mozc
            fcitx5-configtool
        ];
    };
    
}
