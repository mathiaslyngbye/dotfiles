# dotfiles
My personal collection of dotfiles, tailored for the setup of my ThinkPad-L560. 
Not _all_ dotfiles are included, but these are the ones that I actively alter to fit my preferences.
Included is a setup script, _dot.sh_, which back ups current dotfiles in ~/ and replaces them with symbolic links to the content of this repository.

## Background
I currently run DWM alongside GNOME (sue me!) on Ubuntu 18.04. As such, my _.xsession_ serves as both my _.xinirc_ and _.profile_.
The following desktop entry (#.desktop) is placed in _/usr/share/xsessions_. 

``` Ini
[Desktop Entry]
Encoding=UTF-8
Name=WM from Xsession
Comment=Runs the window manager defined by .xsession
Exec=/etc/X11/Xsession
Type=Application
```

