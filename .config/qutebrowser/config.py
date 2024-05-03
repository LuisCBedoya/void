#### Config
config.load_autoconfig(True)
c.content.autoplay = False
#config.source('$HOME/Sync/Qutebrowser/config2.py')
#c.content.blocking.method = 'both'
c.content.blocking.enabled = True
c.content.images = True 
c.content.default_encoding = 'utf-8'
c.content.geolocation = False
c.content.pdfjs = True
c.editor.command = ['st', '-e', 'nvim', '{file}', '-c', 'normal {line}G{column0}l']
c.scrolling.bar = 'never'
c.zoom.default = '90%'
c.content.dns_prefetch = False
c.downloads.location.directory = '$HOME/Descargas/'
c.downloads.location.suggestion = 'both'
c.colors.webpage.darkmode.enabled = True
c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt', 'https://easylist-downloads.adblockplus.org/easylistdutch.txt', 'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt', 'https://www.i-dont-care-about-cookies.eu/abp/', 'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt']
#config.bind('zb', 'config-cycle statusbar.show always never')
#config.bind('zt', 'config-cycle tabs.show always never')
# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'never'
c.content.images = True
c.scrolling.bar = 'never'
#c.statusbar.show = 'in-mode'
c.statusbar.show = 'never'
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
config.set('content.notifications.enabled', False, 'https://www.youtube.com')


#### Unbind 
config.unbind('<Ctrl-PgUp>',mode='normal')
config.unbind('<Ctrl-PgDown>',mode='normal')
config.unbind('<Ctrl-H>',mode='normal')
config.unbind('<Ctrl-Q>',mode='normal')
config.unbind('<Ctrl-W>',mode='normal')
config.unbind('<Ctrl+d>', mode='normal')
config.unbind('<Ctrl+u>', mode='normal')
config.unbind('<Ctrl-t>')
config.unbind('<Alt-M>', mode='normal')
config.unbind('H', mode='normal')
#config.unbind("<Ctrl-T>")

#### Keybindings
config.bind(',ya', 'yank inline {url:pretty}[{title}]')
config.bind(',ym', 'yank inline [{title}]({url:pretty})')
config.bind(',sm', 'set-cmd-text :download --mhtml')
config.bind('<Alt-Tab>', 'tab-prev', mode='normal')
config.bind('<Tab>', 'tab-next', mode='normal')
#config.bind('<Ctrl-n>', 'fake-key <Backspace>', 'insert')
#config.bind('<Alt-h>', 'fake-key <Ctrl-BackSpace>', 'insert')
config.bind('<Ctrl-Alt-h>', 'open -t https://github.com/login')
config.bind('<Ctrl-Alt-l>', 'open -t https://gitlab.com/users/sign_in')
config.bind('<Ctrl-Alt-d>', 'open -t https://www.deepl.com/translator')
config.bind('<Ctrl-Alt-y>', 'open -t https://www.youtube.com/')
config.bind('d', 'scroll-page 0 0.5', mode='normal')
config.bind('u', 'scroll-page 0 -0.5', mode='normal')
config.bind('x', 'tab-close')
config.bind('t', 'open -t')
config.bind('h', 'back', mode='normal')
#config.bind('<Shift-I>', 'set content.images true ;; reload')
config.bind(',q', 'hint links spawn mpv {hint-url}')
config.bind('<Shift-h>', 'back')

#### Colors
c.colors.completion.fg = '#d8dee9'
c.colors.completion.odd.bg = '#000000'
c.colors.completion.even.bg = '#000000'
c.colors.completion.category.fg = '#e5e9f0'
c.colors.completion.category.bg = '#141414'
c.colors.completion.category.border.top = '#141414'
c.colors.completion.category.border.bottom = '#141414'
c.colors.completion.item.selected.fg = '#ffffff'
c.colors.completion.item.selected.bg = '#4c566a'
c.colors.completion.item.selected.border.top = '#4c566a'
c.colors.completion.item.selected.border.bottom = '#4c566a'
c.colors.completion.match.fg = '#ebcb8b'
c.colors.completion.scrollbar.fg = '#e5e9f0'
c.colors.completion.scrollbar.bg = '#000000'
c.colors.downloads.bar.bg = '#141414'
c.colors.downloads.stop.bg = '#b48ead'
c.colors.downloads.system.bg = 'none'
c.colors.downloads.error.fg = '#e5e9f0'
c.colors.downloads.error.bg = '#bf616a'
c.colors.hints.fg = '#141414'
c.colors.hints.bg = '#ebcb8b'
c.colors.hints.match.fg = '#5e81ac'
c.colors.keyhint.fg = '#e5e9f0'
c.colors.keyhint.suffix.fg = '#ebcb8b'
c.colors.keyhint.bg = '#000000'
c.colors.messages.error.fg = '#e5e9f0'
c.colors.messages.error.bg = '#bf616a'
c.colors.messages.error.border = '#bf616a'
c.colors.messages.warning.fg = '#e5e9f0'
c.colors.messages.warning.bg = '#d08770'
c.colors.messages.warning.border = '#d08770'
c.colors.messages.info.fg = '#e5e9f0'
c.colors.messages.info.bg = '#88c0d0'
c.colors.messages.info.border = '#88c0d0'
c.colors.prompts.fg = '#e5e9f0'
c.colors.prompts.border = '1px solid #141414'
c.colors.prompts.bg = '#434c5e'
c.colors.prompts.selected.bg = '#4c566a'
c.colors.statusbar.normal.fg = '#e5e9f0'
c.colors.statusbar.normal.bg = '#141414'
c.colors.statusbar.insert.fg = '#000000'
c.colors.statusbar.passthrough.fg = '#e5e9f0'
c.colors.statusbar.passthrough.bg = '#5e81ac'
c.colors.statusbar.private.fg = '#e5e9f0'
c.colors.statusbar.private.bg = '#4c566a'
c.colors.statusbar.command.fg = '#e5e9f0'
c.colors.statusbar.command.bg = '#434c5e'
c.colors.statusbar.command.private.fg = '#e5e9f0'
c.colors.statusbar.command.private.bg = '#434c5e'
c.colors.statusbar.caret.fg = '#e5e9f0'
c.colors.statusbar.caret.bg = '#b48ead'
c.colors.statusbar.caret.selection.fg = '#e5e9f0'
c.colors.statusbar.caret.selection.bg = '#b48ead'
c.colors.statusbar.progress.bg = '#e5e9f0'
c.colors.statusbar.url.fg = '#e5e9f0'
c.colors.statusbar.url.error.fg = '#bf616a'
c.colors.statusbar.url.hover.fg = '#88c0d0'
c.colors.statusbar.url.success.http.fg = '#e5e9f0'
c.colors.statusbar.url.success.https.fg = '#a3be8c'
c.colors.statusbar.url.warn.fg = '#d08770'
c.colors.tabs.bar.bg = '#4c566a'
c.colors.tabs.indicator.error = '#bf616a'
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.fg = '#e5e9f0'
c.colors.tabs.odd.bg = '#4c566a'
c.colors.tabs.even.fg = '#e5e9f0'
c.colors.tabs.even.bg = '#4c566a'
c.colors.tabs.selected.odd.fg = '#e5e9f0'
c.colors.tabs.selected.odd.bg = '#141414'
c.colors.tabs.selected.even.fg = '#e5e9f0'
c.colors.tabs.selected.even.bg = '#141414'



#### Fonts
c.fonts.default_family = '"Hack Regular"'
c.fonts.default_size = '9pt'
c.fonts.completion.entry = '9pt "Hack Regular"'
c.fonts.debug_console = '9pt "Hack Regular"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '9pt "Hack Regular"'





