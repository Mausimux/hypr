require('window.move')
require('window.resize')

bind({main_mod, 'C'}, hl.dsp.window.close())

bind({main_mod, 'F'}, hl.dsp.window.float({ action = 'toggle' }))

