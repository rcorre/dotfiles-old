return {
    m = {
        func = function()
          if (terminal == 'st') then
            awful.util.spawn_with_shell(terminal ..
              " -c mutt -t mutt -e $HOME/dotfiles/mail/start-mutt.sh")
          else
            awful.util.spawn_with_shell(terminal ..
              " -x $HOME/dotfiles/mail/start-mutt.sh")
          end
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
    i = {
        func = function()
            awful.util.spawn("inkscape")
        end,
        info = "Inkscape"
    },
    i = {
        func = function()
            awful.util.spawn("gimp")
        end,
        info = "gimp"
    },
    s = {
        func = function()
            awful.util.spawn_with_shell("STEAM_FORCE_CLOSE=1 steam")
        end,
        info = "steam"
    }
}
