local file_manager = require('apps.terminal') .. ' -e yazi'

bind({ main_mod, 'E' }, cmd(file_manager))
