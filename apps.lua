local apps = {}

apps.terminal = 'kitty'
apps.fileManager = apps.terminal .. ' -e yazi'
apps.menu = 'rofi -show combi -modes combi -combi-modes "window,drun,run"'
apps.browser = 'brave'

return apps
