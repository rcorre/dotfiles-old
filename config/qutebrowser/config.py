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
c.content.geolocation = False
c.hints.uppercase = True
# c.hints.find_implementation = 'python' # change to javascript if bad results
c.fonts.default_family = "Hack"
c.fonts.default_size = "12pt"
c.completion.open_categories = ['quickmarks', 'bookmarks', 'history']
c.logging.level.console = 'warning'
c.logging.level.ram = 'warning'

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

js_whitelist = config.configdir / 'js_whitelist.py'

c.bindings.commands = {
    'normal': {
        'zi': 'zoom-in',
        'zo': 'zoom-out',
        'gn': 'navigate next',
        '>': 'navigate next',
        'gp': 'navigate prev',
        '<': 'navigate prev',
        'gh': 'back -t',
        'ao': 'download-open',
        'td': 'tab-give',
        'M': 'bookmark-add --toggle',
        '<ctrl+e>': 'edit-url',
        '<ctrl+shift+e>': 'edit-url -t',
        'zz': 'zoom',
        ',ev': 'config-edit',
        ',ej': 'spawn st -e nvim {}'.format(js_whitelist),
        ';r': 'hint --rapid all tab-bg',
        ';m': 'hint links run :bookmark-add {hint-url} ""',
        'ta': 'set-cmd-text -s :spawn --userscript taskadd',
    },
    'command': {
        '<ctrl+k>': 'rl-backward-kill-word',
        '<ctrl+e>': 'edit-command -r',
    },
    'insert': {
        '<ctrl+p>': 'spawn -u pass {url:host} 0',
        '<ctrl+u>': 'spawn -u pass {url:host} 1',
    },
}


if (config.configdir / 'local_config.py').exists():
    config.source('local_config.py')

c.content.javascript.enabled = False
if js_whitelist.exists():
    config.source('js_whitelist.py')
