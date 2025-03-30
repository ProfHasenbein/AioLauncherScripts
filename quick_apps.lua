-- name = "App Launcher"
-- type = "widget"
-- description = "Simple widget to launch apps via buttons"
-- author = "ProfHasenbein"
-- version = "1.0"

function on_resume()
    local app = apps:app("ru.execbit.aiolauncher")
    if app == nil then return end

    my_gui = gui{
        {"button", "fa:code",{expand = true}},
        {"spacer", 2},
        {"button", "fa:comment"},
        {"spacer", 2},
        {"button", "fa:music"},
        {"new_line", 2},
        {"button", "fa:microchip-ai"},
        {"spacer", 2},
        {"button", "fa:sliders", {expand = true}},
        {"spacer", 2},
        {"button", "fa:play",{expand = true}}
    }

    my_gui.render()
end

function on_click(idx)
    if idx == 1 then
        apps:launch("com.termux")
    elseif idx == 3 then
        apps:launch("com.whatsapp")
    elseif idx == 5 then
        apps:launch("com.spotify.music")
    elseif idx == 7 then
        apps:launch("com.openai.chatgpt")
    elseif idx == 9 then
        apps:launch("com.android.settings")
    elseif idx == 11 then
        apps:launch("com.google.android.youtube")
    end
end

function on_long_click(idx)
    ui:show_toast("you are gay")
end