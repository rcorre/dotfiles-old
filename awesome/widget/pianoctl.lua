-- Widget to interface with pianobar (CLI to pandora) using pianoctl
local naughty = require("naughty")
local ctl_dir = ".config/pianobar/ctl"

-- Commands that can be sent to pianobar
pianocmd = {
    skip = 'n',
    play = 'p',
    love = '+',
    ban = '-',
    quit = 'q',
    upcoming = 'u'
}

piano_key_map = {
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

piano_send = function (cmd) 
    os.execute(string.format("echo %s > %s", cmd, ctl_dir)) 
end
