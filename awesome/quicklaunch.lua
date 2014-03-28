return {
    m = {
        func = function()
            awful.util.spawn_with_shell(terminal .. 
              " -x $HOME/dotfiles/mail/start-mutt.sh")
        end,
        info = "mutt"
    },
    f = {
        func = function()
            awful.util.spawn("firefox")
        end,
        info = "firefox"
    },
    c = {
        func = function()
            awful.util.spawn(
              "firefox --new-window https://www.google.com/calendar/render"
            )
        end,
        info = "google calendar"
    },
    p = {
        func = function()
            awful.util.spawn(
              "firefox --new-window https://play.google.com/music/listen#/now"
            )
        end,
        info = "google play music"
    },
    s = {
        func = function()
            awful.util.spawn_with_shell("STEAM_FORCE_CLOSE=1 steam")
        end,
        info = "steam"
    }
}
