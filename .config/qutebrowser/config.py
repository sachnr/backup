import subprocess

# autoload gui settings
config.load_autoconfig()

# stylesheet
c.content.user_stylesheets = ["/home/sachnr/.config/qutebrowser/css/gruvbox-all-site.css"]

# privacy
c.backend = "webengine"
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
]
c.content.blocking.enabled = True
c.content.blocking.hosts.block_subdomains = True
c.content.blocking.method = "auto"
c.content.cookies.accept = "no-3rdparty"
c.content.headers.do_not_track = True
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.site_specific_quirks.enabled = False

# Startpage
c.url.default_page = "~/.mozilla/firefox/startpage/index.html"
c.url.start_pages = ["~/.mozilla/firefox/startpage/index.html"]

# Keybinds
config.unbind("<Ctrl-w>")
config.bind("<Space>q", "tab-close")
config.bind("<Ctrl-c>", "<Escape>")
config.bind("<Ctrl-C>", "yank selection", mode="normal")
config.bind("<Tab>", "tab-next")
config.bind("<Shift-Tab>", "tab-prev")
config.bind("<Ctrl-PgDown>", "prompt-item-focus next")
config.bind("<Ctrl-PgUp>", "prompt-item-focus prev")

# General
c.completion.shrink = True
c.completion.use_best_match = True
c.downloads.position = "bottom"
c.downloads.remove_finished = 10000
c.statusbar.widgets = ["progress", "keypress", "url", "history"]
c.scrolling.bar = "always"
c.tabs.title.format = "{index}: {audio}{current_title}"
c.tabs.title.format_pinned = "{index}: {audio}{current_title}"
c.auto_save.session = True
c.content.default_encoding = "utf-8"
c.content.javascript.can_access_clipboard = True
c.content.notifications.enabled = True
c.tabs.position = "top"
c.completion.shrink = True

# Fonts
c.fonts.completion.category = "bold default_size default_family"
c.fonts.completion.entry = "default_size default_family"
c.fonts.contextmenu = None
c.fonts.default_family = ["Roboto"]
c.fonts.default_size = "11pt"
c.fonts.downloads = "default_size default_family"
c.fonts.hints = "bold default_size default_family"
c.fonts.keyhint = "default_size default_family"
c.fonts.messages.error = "default_size default_family"
c.fonts.messages.info = "default_size default_family"
c.fonts.messages.warning = "default_size default_family"
c.fonts.prompts = "default_size sans-serif"
c.fonts.statusbar = "default_size default_family"
c.fonts.tabs.selected = "default_size default_family"
c.fonts.tabs.unselected = "default_size default_family"
c.fonts.web.family.cursive = ""
c.fonts.web.family.fantasy = ""
c.fonts.web.family.fixed = "JetBrainsMono Nerd Font"
c.fonts.web.family.sans_serif = "Roboto"
c.fonts.web.family.serif = "Roboto"
c.fonts.web.family.standard = "Roboto"
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 0
c.fonts.web.size.minimum_logical = 6

# statusbar
c.statusbar.show = "always"
c.statusbar.position = "bottom"
c.statusbar.padding = {"top": 1, "bottom": 1, "left": 0, "right": 0}
c.statusbar.widgets = ["keypress", "url", "scroll", "history", "tabs", "progress"]

# tabs
c.tabs.indicator.padding = {"top": 2, "bottom": 2, "left": 0, "right": 4}
c.tabs.indicator.width = 4
c.tabs.max_width = 220
c.tabs.min_width = 140
c.tabs.padding = {"top": 7, "bottom": 7, "left": 14, "right": 14}

# Colors
# import colors from .Xresources


def read_xresources(prefix):
    props = {}
    x = subprocess.run(["xrdb", "-query"], capture_output=True, check=True, text=True)
    lines = x.stdout.split("\n")
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(":\t")
        props[prop] = value
    return props


xresources = read_xresources("*")

background = xresources["*background"]
foreground = xresources["*foreground"]

black = xresources["*color0"]
grey = xresources["*color8"]

darkred = xresources["*color1"]
red = xresources["*color9"]

darkgreen = xresources["*color2"]
green = xresources["*color10"]

darkyellow = xresources["*color3"]
yellow = xresources["*color11"]

darkblue = xresources["*color4"]
blue = xresources["*color12"]

darkmagenta = xresources["*color5"]
magenta = xresources["*color13"]

darkcyan = xresources["*color6"]
cyan = xresources["*color14"]

lightgrey = xresources["*color7"]
white = xresources["*color15"]

c.colors.completion.category.border.bottom = darkblue
c.colors.completion.category.border.top = darkblue
c.colors.completion.category.fg = foreground
c.colors.completion.even.bg = background
c.colors.completion.fg = [foreground, foreground, foreground]
c.colors.completion.item.selected.bg = darkblue
c.colors.completion.item.selected.border.bottom = darkblue
c.colors.completion.item.selected.border.top = darkblue
c.colors.completion.item.selected.fg = black
c.colors.completion.item.selected.match.fg = red
c.colors.completion.match.fg = red
c.colors.completion.odd.bg = background
c.colors.completion.scrollbar.bg = lightgrey
c.colors.completion.scrollbar.fg = grey
c.colors.contextmenu.disabled.bg = black
c.colors.contextmenu.disabled.fg = lightgrey
c.colors.contextmenu.menu.bg = background
c.colors.contextmenu.menu.fg = foreground
c.colors.contextmenu.selected.bg = blue
c.colors.contextmenu.selected.fg = black
c.colors.downloads.bar.bg = background
c.colors.downloads.error.bg = darkred
c.colors.downloads.error.fg = black
c.colors.downloads.start.bg = darkgreen
c.colors.downloads.start.fg = black
c.colors.downloads.stop.bg = darkblue
c.colors.downloads.stop.fg = black
c.colors.downloads.system.bg = "rgb"
c.colors.downloads.system.fg = "rgb"
c.colors.hints.bg = background
c.colors.hints.fg = white
c.colors.hints.match.fg = green
c.colors.keyhint.bg = background
c.colors.keyhint.fg = foreground
c.colors.keyhint.suffix.fg = yellow
c.colors.messages.error.bg = darkred
c.colors.messages.error.border = darkred
c.colors.messages.error.fg = black
c.colors.messages.info.bg = background
c.colors.messages.info.border = darkcyan
c.colors.messages.info.fg = black
c.colors.messages.warning.bg = darkyellow
c.colors.messages.warning.border = darkyellow
c.colors.messages.warning.fg = black
c.colors.prompts.bg = background
c.colors.prompts.border = "1px solid " + darkblue
c.colors.prompts.fg = foreground
c.colors.prompts.selected.bg = black
c.colors.prompts.selected.fg = white
c.colors.statusbar.caret.bg = background
c.colors.statusbar.caret.fg = darkcyan
c.colors.statusbar.caret.selection.bg = background
c.colors.statusbar.caret.selection.fg = cyan
c.colors.statusbar.command.bg = background
c.colors.statusbar.command.fg = green
c.colors.statusbar.command.private.bg = background
c.colors.statusbar.command.private.fg = green
c.colors.statusbar.insert.bg = background
c.colors.statusbar.insert.fg = magenta
c.colors.statusbar.normal.bg = background
c.colors.statusbar.normal.fg = foreground
c.colors.statusbar.passthrough.bg = darkyellow
c.colors.statusbar.passthrough.fg = black
c.colors.statusbar.private.bg = background
c.colors.statusbar.private.fg = darkmagenta
c.colors.statusbar.progress.bg = darkgreen
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.fg = foreground
c.colors.statusbar.url.hover.fg = blue
c.colors.statusbar.url.success.http.fg = foreground
c.colors.statusbar.url.success.https.fg = lightgrey
c.colors.statusbar.url.warn.fg = yellow
c.colors.tabs.bar.bg = black
c.colors.tabs.even.bg = black
c.colors.tabs.even.fg = grey
c.colors.tabs.indicator.error = red
c.colors.tabs.indicator.start = blue
c.colors.tabs.indicator.stop = green
c.colors.tabs.indicator.system = "rgb"
c.colors.tabs.odd.bg = black
c.colors.tabs.odd.fg = grey
c.colors.tabs.pinned.even.bg = darkgreen
c.colors.tabs.pinned.even.fg = black
c.colors.tabs.pinned.odd.bg = darkgreen
c.colors.tabs.pinned.odd.fg = black
c.colors.tabs.pinned.selected.even.bg = grey
c.colors.tabs.pinned.selected.even.fg = foreground
c.colors.tabs.pinned.selected.odd.bg = grey
c.colors.tabs.pinned.selected.odd.fg = foreground
c.colors.tabs.selected.even.bg = grey
c.colors.tabs.selected.even.fg = white
c.colors.tabs.selected.odd.bg = grey
c.colors.tabs.selected.odd.fg = white
c.colors.webpage.bg = lightgrey
