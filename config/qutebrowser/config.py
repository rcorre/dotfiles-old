# pylint: disable=missing-docstring
import os.path
c = c  # noqa: F821 pylint: disable=invalid-name,undefined-variable
config = config  # noqa: F821 pylint: disable=invalid-name,undefined-variable

c.editor.command = ['st', 'nvim', '-c', 'set tw=0', '-f', '{}']
c.auto_save.session = True
c.new_instance_open_target = 'window'
c.completion.shrink = True
c.tabs.background = True
c.tabs.last_close = 'blank'
c.tabs.new_position.related = 'next'
c.tabs.new_position.unrelated = 'next'
c.downloads.location.directory = '/tmp'
c.content.plugins = True
c.content.autoplay = False
c.hints.uppercase = True
# c.hints.find_implementation = 'python' # change to javascript if bad results
c.fonts.default_family = "Hack"
c.completion.open_categories = ['quickmarks', 'bookmarks', 'history']

config.set('content.register_protocol_handler', True, 'calendar.google.com')
config.set('content.notifications', True, 'calendar.google.com')
config.set('content.register_protocol_handler', False, 'mail.google.com')
config.set('content.notifications', False, 'reddit.com')

c.url.searchengines['gd'] = \
    'https://docs.godotengine.org/en/latest/search.html?q={}&check_keywords=yes&area=default'

c.url.searchengines['gdissue'] = \
    'https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aissue+{}'

c.url.searchengines['texture'] = 'https://3dtextures.me/?s={}'
c.url.searchengines['bapi'] = \
    'https://docs.blender.org/api/2.79b/search.html?q={}'

c.url.searchengines['gameicon'] = \
    'https://game-icons.net/search.html?q={}&idx=icons&p=0'
c.url.searchengines['library'] = \
    'https://catalog.wakegov.com/Union/Search?type=Keyword&lookfor={}'

config.bind('zi', 'zoom-in')
config.bind('zo', 'zoom-out')
config.bind('gn', 'navigate next')
config.bind('>', 'navigate next')
config.bind('gp', 'navigate prev')
config.bind('<', 'navigate prev')
config.bind('gh', 'back -t')
config.bind('ao', 'download-open')
config.bind('td', 'tab-give')
config.bind('M', 'bookmark-add --toggle')
config.bind('<ctrl+e>', 'edit-url')
config.bind('<ctrl+shift+e>', 'edit-url -t')
config.bind('zz', 'zoom')
config.bind(',ev', 'config-edit')
config.bind(';r', 'hint --rapid all tab-bg')
config.bind(';m', 'hint links run :bookmark-add {hint-url} ""')
config.bind('ta', 'set-cmd-text -s :spawn --userscript taskadd')

config.bind('<ctrl+k>', 'rl-backward-kill-word', mode='command')
config.bind('<ctrl+e>', 'edit-command -r', mode='command')

if (config.configdir / 'local_config.py').exists():
    config.source('local_config.py')

c.content.javascript.enabled = False
if (config.configdir / 'js_whitelist.py').exists():
    config.source('js_whitelist.py')
