local wibox = require("wibox")
local awful = require("awful")
local vicious = require("vicious")

battery_widget = awful.widget.progressbar()
battery_widget:set_width(8)
battery_widget:set_height(10)
battery_widget:set_vertical(true)
battery_widget:set_background_color("#494B4F")
battery_widget:set_border_color(nil)
battery_widget:set_color({ type = "linear", from = {0,0}, to = {0,10}, 
stops = {{0, "#FF5656"}, {0.5, "#88A175"}, {1, "#AECF96"}}})
vicious.register(battery_widget, vicious.widgets.bat, "$2", 61, "BAT0")
