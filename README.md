# dotfiles
My personal collection of dotfiles, tailored for the setup of my ThinkPad-L560. 
Not _all_ dotfiles are included, but these are the ones that I actively alter to fit my preferences.
This README serves as both installation guide and notes to my future self.

## Installation 
Included is a setup script, `setup.sh`, which backs up conflicting dotfiles in `~/` and replaces them with symbolic links to the content of this repository.
The repository can be cloned wherever. I usually keep it in `~/`. 
``` bash
git clone https://github.com/mathiaslyngbye/dotfiles 
cd dotfiles
source setup.sh
```

### suckless software
I use some suckless software packages, and the setup script  replaces their `config.h` files.
The script assumes _my_ setup, which involves a `~/suckless/` directory containing dwm, st, dmenu, etc..

## Notes
I currently run both dwm and GNOME (sue me!) on Ubuntu 18.04. As such, my `.xsession` serves as my `.xinitrc`.
Additionally, the following desktop entry (#.desktop) is placed in `/usr/share/xsessions`. 

``` Ini
[Desktop Entry]
Encoding=UTF-8
Name=WM from Xsession
Comment=Runs the window manager defined by .xsession
Exec=/etc/X11/Xsession
Type=Application
```

