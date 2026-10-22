-- Clipboard history
bind({ main_mod, 'V' }, cmd('cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy'))

-- Clipboard paste watcher
event.start(cmd('wl-paste -w cliphist store'))
