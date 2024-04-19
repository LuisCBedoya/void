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

######### Normal mode
#unbind 
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
#keybindings
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
config.bind('j', 'mode-leave insert')
config.bind('k', 'mode-leave insert')
config.bind('h', 'back', mode='normal')


