## Installation

official [`wiki`](https://wiki.archlinux.org/index.php/Installation_guide)
Uncomment `#ParallelDownloads = 10` from  `/etc/pacman.conf`
install base packages and kernel
```
# pacstrap /mnt base linux linux-firmware
```
```
# pacstrap /mnt vim dhcpcd iwd network-manager os-prober grub efibootmgr sudo xdg-user-dirs man-db git zsh usbutils intel-ucode base-devel bluez bluez-utils
```
## Generating the fstab

```
# genfstab -U /mnt >> /mnt/etc/fstab
```

Check the resulting `/mnt/etc/fstab` file, and edit it in case of errors. 

## Chroot

Now, change root into the newly installed system  

```
# arch-chroot /mnt /bin/bash
```

## Time zone

Select timezone from  `/usr/share/zoneinfo/`

```
# ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
```

Run `hwclock` to generate `/etc/adjtime`: 

```
# hwclock --systohc
```
This command assumes the hardware clock is set to UTC.

## Localization

**Uncomment** `en_US.UTF-8 UTF-8` and other needed locales in `/etc/locale.gen`, **save**, and generate them with:  

```
# locale-gen
```

Create the `locale.conf` file, and set the LANG variable accordingly:  

```
# locale > /etc/locale.conf
```

make keyboard layout persistent in `vconsole.conf`:

```
# echo "KEYMAP=us" > /etc/vconsole.conf
```
## Network configuration

Create the hostname file.

```
# echo "MYHOSTNAME" > /etc/hostname
```

Open `/etc/hosts` to add matching entries to `hosts`:

```
127.0.0.1    localhost  
::1          localhost  
127.0.1.1    MYHOSTNAME.localdomain	  MYHOSTNAME
```
If the system has a permanent IP address, it should be used instead of `127.0.1.1`.

### uncomment multilib repository and parallel download

```
ParallelDownloads = 10
[multilib]
Include = /etc/pacman.d/mirrorlist
```
## Root password

Set the `root` password:  

```
# passwd
```

## Add a user account

```
# useradd -m -g users -G wheel,storage,power,video,audio,rfkill,input -s /bin/sh MYUSERNAME
```
Set the password of user `MYUSERNAME`:  
```
# passwd MYUSERNAME
```

## Add the new user to sudoers:

If you want a root privilege in the future by using the `sudo` command, you should grant one yourself:

```
# EDITOR=vim visudo
```

Uncomment the line (Remove #):

```
# %wheel ALL=(ALL) ALL
```
## Install the boot loader

 Install bootloader:

```
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
```

Uncomment `GRUB_DISABLE_OS_PROBER="false"` in `/etc/default/grub` and generate boot entries

```
# grub-mkconfig -o /boot/grub/grub.cfg
```

## Enable internet connection and other services for the next boot

```
# systemctl enable NetworkManager bluetooth
```
`exit` chroot and `reboot`  

### [[POST INSTALLATION]](./ArchInstall.md)


