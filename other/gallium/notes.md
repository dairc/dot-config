- add to .bashrc to get 256 color in `xfce-terminal` for vim colorscheme to work etc.

https://bbs.archlinux.org/viewtopic.php?id=175581

https://stackoverflow.com/questions/19327836/why-am-i-seeing-only-8-colors-in-terminal-xfce-terminal

```
case "$TERM" in
       xterm*) TERM-xterm-256color
esac

```
- set the keymap at boot, delay needed to work, script backup in shell-scripts repo `@reboot sleep 30 && $HOME/bin/set-keymap`