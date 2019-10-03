# dotfiles
My personal collection of dotfiles, tailored for the setup of my ThinkPad-L560. 
Not _all_ dotfiles are included, but these are the ones that I actively alter to fit my preferences.
This README serves as both installation guide and notes to my future self.

## Installation 
Included is a setup script, _setup.sh_, which backs up current dotfiles in ~/ and replaces them with symbolic links to the content of this repository.

### suckless software
As I use some suckless software packages, the setup script also replaces their respective _config.h_ files.
The script assumes _my_ setup, which consists the _~/suckless/_ directory containing dwm, st, dmenu, etc..

## Notes
I currently run both dwm and GNOME (sue me!) on Ubuntu 18.04. As such, my _.xsession_ serves as my _.xinitrc_.
Additionally, the following desktop entry (#.desktop) is placed in _/usr/share/xsessions_. 

``` Ini
[Desktop Entry]
Encoding=UTF-8
Name=WM from Xsession
Comment=Runs the window manager defined by .xsession
Exec=/etc/X11/Xsession
Type=Application
```

