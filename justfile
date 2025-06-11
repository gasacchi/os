# kanata:
#     doas cp .config/kanata/kanata.service /lib/systemd/system/kanata.service
#     doas systemctl start kanata.service
#     doas systemctl enable kanata.service

rebuild-switch:
    doas nixos-rebuild switch --flake .

dotfiles:
    cd ./dotfiles; just stow

dotfiles-delete:
    cd ./dotfiles; just delete
         
dotfiles-restow:
    cd ./dotfiles; just restow
