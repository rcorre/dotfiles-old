c = c  # noqa: F821 pylint: disable=invalid-name,undefined-variable
config = config  # noqa: F821 pylint: disable=invalid-name,undefined-variable

c.editor.command = ['st', 'nvim', "+'set tw=0'", '-f', '{}']
c.auto_save.session = True
c.new_instance_open_target = 'window'
c.completion.shrink = True
c.tabs.background = True
c.tabs.last_close = 'blank'
c.downloads.location.directory = '~/downloads'
c.content.plugins = True
c.hints.uppercase = True
# c.hints.find_implementation = 'python' # change to javascript if bad results
c.fonts.monospace = '"Hack", "xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

config.bind('zi', 'zoom-in')
config.bind('zo', 'zoom-out')
config.bind('gn', 'navigate next')
config.bind('gp', 'navigate prev')
config.bind('ao', 'download open')
