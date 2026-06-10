local file_manager = require('apps.terminal') .. ' -e yazi'

hl.bind({main_mod, 'E'}, hl.dsp.exec_cmd(file_manager))

