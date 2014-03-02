local wibox = require("wibox")

local volume_cmd= {
    bigup   = "-M set Master 10%+",
    up      = "-M set Master 2%+",
    bigdown = "-M set Master 10%-",
    down    = "-M set Master 2%-",
    mute    = "set Master toggle",
    read    = "-M get Master"
}

volume_control = function (mode)
    local fd = io.popen("amixer " .. volume_cmd[mode])
    local status = fd:read("*all")
    fd:close()
    local volume = tonumber(string.match(status, "(%d?%d?%d)%%"))
    volume = string.format("% 3d", volume)
    if string.find(status, "[on]", 1, true) then
        volume = volume .. "%"
    else
        volume = volume .. "M"
    end
    volume_widget:set_text("VOL:" .. volume)
end

volume_widget = wibox.widget.textbox()
volume_control("read")
