local wibox = require("wibox")
local vicious = require("vicious")

date_widget = wibox.widget.textbox()
vicious.register(date_widget, vicious.widgets.date, "%a %D %R")
