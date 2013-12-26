-- Widget to interface with pianobar (CLI to pandora) using pianoctl
local naughty = require("naughty")
local wibox = require("wibox")
-- files that pianobar uses for input and output
-- set in pianobar's config file
local ctl_file = ".config/pianobar/ctl"
local out_file = ".config/pianobar/out"

-- Commands that can be sent to pianobar
pianocmd = {
    skip     = 'n',
    play     = 'p',
    love     = '+',
    ban      = '-',
    quit     = 'q',
    upcoming = 'u'
}

-- Check if pianobar is already running
pianobar_running = function ()
    local handle = io.popen("ps cax | grep pianobar")
    local output = handle:read("*a")
    handle:close()
    return output ~= ""
end

start_pianobar = function ()
    os.execute("nohup pianobar &>" .. out_file .. " &disown")
end

get_pianobar_keymap = function ()
    if (pianobar_running()) then
        return {
            n = {
                func = function()
                    piano_send(pianocmd.skip)
                end,
                info = "Next Song"
            },
            p = {
                func = function ()
                    piano_send(pianocmd.play)
                end,
                info = "Play/Pause"
            },
            l = {
                func = function ()
                    piano_send(pianocmd.love)
                end,
                info = "Love Song"
            },
            b = {
                func = function ()
                    piano_send(pianocmd.ban)
                end,
                info = "Ban Song"
            },
            q = {
                func = function ()
                    piano_send(pianocmd.quit)
                end,
                info = "Quit pianobar"
            },
            u = {
                func = function ()
                    piano_send(pianocmd.upcoming)
                end,
                info = "List Upcoming Songs"
            }
        }
    else
        return {
            p = {
                func = function ()
                    start_pianobar()
                end,
                info = "Start Pandora"
            }
        }
    end
end

pianobar_widget =  wibox.widget.textbox()
pianobar_widget:set_text(" Pandora off ")

piano_update = function (artist, song)
    pianobar_widget:set_text(song .. " by " .. artist)
end

piano_send = function (cmd)
    os.execute(string.format("echo %s > %s", cmd, ctl_file))
end
