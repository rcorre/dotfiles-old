return {
    m = {
        func = function()
            awful.util.spawn(terminal .. " -x mutt")
        end,
        info = "mutt"
    },
    f = {
        func = function()
            awful.util.spawn("firefox")
        end,
        info = "firefox"
    }
}
