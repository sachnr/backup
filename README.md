## Install

### [[Arch INSTALLATION]](./ArchInstall.md)

### **if Gnome**

Change mouse button modifier to `super` key

```
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
```

### **other useful stuff**

- **Graphics Tablet**: [NonWacom](https://wiki.archlinux.org/title/Wacom_tablet#Non-Wacom_tablets)
- **Firewall**: [ufw](https://wiki.archlinux.org/title/Uncomplicated_Firewall#Installation)
- **Boot Animation**: [Plymouth](https://wiki.archlinux.org/title/Plymouth#Installation)
- **ssd Optimization**: [wikipage](https://wiki.archlinux.org/title/Solid_state_drive#Periodic_TRIM)
- **Turn Off Mouse Accel x**: [wikipage](https://wiki.archlinux.org/title/Mouse_acceleration#Disabling_mouse_acceleration)

### **Aur**

```
$ git clone https://aur.archlinux.org/yay-bin.git ~/Downloads/yay-bin
$ cd ~/Downloads/yay-bin
$ makepkg -sir
```

### **Dolphin**

Dolphin thumbnails

```
# pacman -S kdegraphics-thumbnailers kimageformats qt5-imageformats kdesdk-thumbnailers ffmpegthumbs taglib dolphin dolphin-plugins
```

### **X**

```
$ sudo pacman -S xorg-server xorg-xinit xorg-setxkbmap xorg-xrandr xorg-xwayland xorg-xdpyinfo xorg-xprop
```

### **Pipewire**

```
$ sudo pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse
```

### **Authentication Manager**

```
$ sudo pacman -S polkit polkit-gnome gnome-keyring
```

### **environment variables**

```
export QT_QPA_PLATFORMTHEME='qt5ct'
```

### **Changing Theme,fonts etc**

```
sudo pacman -S qt5ct kvantum
sudo pacman -S gtk3 gtk-engine-murrine gtk-engines gnome-theme-extra
yay -S lxappearance-gtk3 --noconfirm
```
