local wibox = require("wibox")
local awful = require("awful")
local vicious = require("vicious")

battery_widget = wibox.widget.textbox()
local update_function = function (widget, args)
    charge = args[2]
    local tag = '<span weight="bold" '
    if charge < 25 then
        tag = tag .. 'color="red">'
    elseif charge < 50 then
        tag = tag .. 'color="yellow">'
    else
        tag = tag .. 'color="cyan">'
    end
    return tag .. 'BAT: ' .. charge .. '%</span>'
end

vicious.register(battery_widget, vicious.widgets.bat, update_function, 61, "BAT0")
