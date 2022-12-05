# Kernel-switch

install new kernel `zen`

    sudo pacman -S linux-zen linux-zen-headers
Update startup grub

    sudo vim /etc/default/grub
    
    GRUB_DEFAULT=saved
    GRUB_SAVEDEFAULT=true
    GRUB_DISABLE_SUBMENU=y
    
    sudo grub-mkconfig -o /boot/grub/grub.cfg
done and reboot
