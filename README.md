## Install
### [[Arch INSTALLATION]](./ArchInstall.md)
### **Gnome**

+ **Tiling**: [Material Shell](https://github.com/material-shell/material-shell) makes gnome usable
+ **TilingAlt**: [Pop Shell](https://github.com/pop-os/shell) edit `schemas/org.gnome.shell.extensions.pop-shell.gschema.xml` for custom keybinds

Change mouse button modifier to `super` key
```
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
```


### **KDE**

+ **Tiling**: [Bismuth](https://github.com/Bismuth-Forge/bismuth) Tiling for kde
+ **Theme**: [Materia-kde](https://github.com/PapirusDevelopmentTeam/materia-kde) Materia KDE Theme 
+ **Widget**: [VirtualDesktopBar](https://github.com/wsdfhjxc/virtual-desktop-bar) Customizable virtual desktop indicator 

### **Window Managers**

+ **idletimer**: [xidlehook](https://github.com/jD91mZM2/xidlehook) replacement for xautolock

### **Shell customizations**

+ **OhMyZsh**: [OhMyZsh](https://ohmyz.sh/) 
+ **Starship**: [Starship](https://starship.rs/) 

### **other useful stuff**

+ **Graphics Tablet**: [NonWacom](https://wiki.archlinux.org/title/Wacom_tablet#Non-Wacom_tablets) 
+ **Setup Firewall**: [ufw](https://wiki.archlinux.org/title/Uncomplicated_Firewall#Installation) 
+ **Boot Animation**: [Plymouth](https://wiki.archlinux.org/title/Plymouth#Installation)
+ **Manage wine apps/games**: [Lutris](https://github.com/lutris/)
+ **ssd Optimization**: [wikipage](https://wiki.archlinux.org/title/Solid_state_drive#Periodic_TRIM)
+ **Turn Off Mouse Accel**: [wikipage](https://wiki.archlinux.org/title/Mouse_acceleration#Disabling_mouse_acceleration)

### **Aur**

```
$ git clone https://aur.archlinux.org/yay-bin.git ~/Downloads/yay-bin
$ cd ~/Downloads/yay-bin
$ makepkg -sir
```

### **Dolphin**

```
# pacman -S dolphin dolphin-plugins
```
packages for generating thumbnails
```
# pacman -S kdegraphics-thumbnailers kimageformats qt5-imageformats kdesdk-thumbnailers ffmpegthumbs taglib
```

### **Text Editors**

```
$ yay -S visual-studio-code-bin
$ sudo pacman -S neovim
```

### **Xorg**
```
$ sudo pacman -S xorg-server xorg-xinit xorg-setxkbmap xorg-xrandr xorg-xwayland xorg-xdpyinfo xorg-xprop
```

### **Nvidia**
```
$ sudo pacman -S nvidia nvidia-settings nvtop 
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
edit `/etc/environment`
```
QT_QPA_PLATFORMTHEME='qt5ct'
```

### **Changing Theme,fonts etc**
for gtk based applications

```
sudo pacman -S qt5ct kvantum
```

for qt based applications

```
sudo pacman -S gtk3 gtk-engine-murrine gtk-engines gnome-theme-extra
```

