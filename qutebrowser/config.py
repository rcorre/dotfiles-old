# pylint: disable=missing-docstring
c = c  # noqa: F821 pylint: disable=invalid-name,undefined-variable
config = config  # noqa: F821 pylint: disable=invalid-name,undefined-variable

c.editor.command = ['st', 'nvim', '-c', 'set tw=0', '-f', '{}']
c.auto_save.session = True
c.new_instance_open_target = 'window'
c.completion.shrink = True
c.tabs.background = True
c.tabs.last_close = 'blank'
c.downloads.location.directory = '~/downloads'
c.content.plugins = True
c.hints.uppercase = True
# c.hints.find_implementation = 'python' # change to javascript if bad results
c.fonts.monospace = '"Hack", ' + c.fonts.monospace

config.bind('zi', 'zoom-in')
config.bind('zo', 'zoom-out')
config.bind('gn', 'navigate next')
config.bind('>', 'navigate next')
config.bind('gp', 'navigate prev')
config.bind('<', 'navigate prev')
config.bind('gh', 'back -t')
config.bind('ao', 'download open')
config.bind('td', 'tab-detach')
config.bind('<ctrl+e>', 'edit-url')
