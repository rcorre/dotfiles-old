local wibox = require("wibox")
local vicious = require("vicious")

thermal_widget = wibox.widget.textbox()
vicious.register(thermal_widget, vicious.widgets.thermal, "TEMP: $1°C", 19, 
    {"coretemp.0", "core"})
