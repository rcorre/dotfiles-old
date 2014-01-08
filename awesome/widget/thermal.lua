local wibox = require("wibox")
local vicious = require("vicious")


thermal_widget = wibox.widget.textbox()

local update_function = function (widget, args)
    temp = args[1]
    local tag = '<span weight="bold" '
    if temp > 80 then
        tag = tag .. 'color="red" size="large">'
    else if temp > 60 then
        tag = tag .. 'color="yellow">'
    else
        tag = tag .. 'color="cyan">'
    end
    return tag .. 'TEMP: ' .. temp .. '°C</span>' end
end

vicious.register(thermal_widget, vicious.widgets.thermal, update_function, 19, 
    {"coretemp.0", "core"})
