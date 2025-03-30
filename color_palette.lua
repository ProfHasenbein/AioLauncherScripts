-- name = "Color Palette"
-- type = "widget"
-- description = "display yor Aio-theme color palette"
-- author = "ProfHasenbein"
-- version = "1.0"

function on_resume()

    local info = aio:colors()

    local badge = info.badge
    local prog_bad = info.progress_bad
    local prog = info.progress
    local butt_txt = info.button_text
    local prim_txt = info.primary_text
    local sec_txt = info.secondary_text
    local enable_icon = info.enabled_icon
    local prog_good = info.progress_good
    local butt = info.button
    local disable_icon = info.disabled_icon
    local acc = info.accent

my_gui = gui{
    {"text", "█", {color = butt, size= "40"}},
    {"text", "█", {color = prog_bad, size= "40"}},
    {"text", "█", {color = prog_bad, size= "40"}},
    {"text", "█", {color = butt, size= "40"}},
    {"text", "█", {color = disable_icon, size= "40"}},
    {"text", "█", {color = enable_icon, size= "40"}},
    {"text", "█", {color = prim_txt, size= "40"}},
    {"text", "█", {color = sec_txt, size= "40"}},
    {"text", "█", {color = butt_txt, size= "40"}},
    {"text", "█", {color = prog, size= "40"}},
    {"text", "█", {color = acc, size= "40"}}
}

    my_gui.render()


end
