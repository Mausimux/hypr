require('window.move')
require('window.resize')

hl.bind({main_mod, 'C'}, hl.dsp.window.close())

hl.bind({main_mod, 'F'}, hl.dsp.window.float({ action = "toggle" }))

