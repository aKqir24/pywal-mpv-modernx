# pywal-mpv-modernx
An MPV OSC script based on [modernx](https://github.com/cyl0/ModernX) that uses the pywal colors as its scheme.

![img](https://github.com/cyl0/ModernX/blob/main/preview.png)

# How to install
- __On windows__
Locate your MPV folder. It is typically located at `\%APPDATA%\mpv\`, then copy the contents in it.

- __On Linux__
Locate the `$HOME/.config` and put the contents of this file there and install [Material-Design-Iconic-Font.ttf](https://zavoloklom.github.io/material-design-iconic-font/) my copying it in the `$HOME/.fonts` or if you have git installed then:
```bash
  git clone https://github.com/aKqir24/pywal-mpv-modernx.git $HOME/.config/
  ln -sf ~/.config/mpv/Material-Design-Iconic-Font.ttf $HOME/.fonts/
```

# How to config

edit osc.conf in "\~\~/script-opts/" folder, however many options are changed, so refer to the user_opts variable in the script file for details.

# Thumbnails

To enable thumbnails in timeline, install [thumbfast](https://github.com/po5/thumbfast). No other step necessary.

# Buttons

like the built-in script, some buttons may accept multiple mouse actions, here is a list:

## Seekbar
* Left mouse button: seek to chosen position.
* Right mouse button: seek to the head of chosen chapter
## Playlist back/forward buttons
* Left mouse button: play previous/next file.
* Right mouse button: show playlist.
## Skip back/forward buttons
* Left mouse button: go to previous/next chapter.
* Right mouse button: show chapter list.
## Jump back/forward buttons
* Left mouse button: Jumps forwards/backwards by 5 seconds, or by the amount set in `user_opts`.
* Right mouse button: Jumps forwards/backwards by 1 minute.
* Shift + Left mouse button: Skips to the previous/next frame.
## Cycle audio/subtitle buttons
* Left mouse button/Right mouse button: cycle to next/previous track.
* Middle mouse button: show track list.
## Playback time
* Left mouse button: display time in milliseconds
## Duration
* Left mouse button: display total time instead of remaining time
