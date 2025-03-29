function on_resume()

    local info = aio:colors()

local badge = [["]] .. info.badge .. [["]]
local prog_bad = [["]] .. info.progress_bad .. [["]]
local prog = [["]] .. info.progress .. [["]]
local butt_txt = [["]] .. info.button_text .. [["]]
local prim_txt = [["]] .. info.primary_text .. [["]]
local sec_txt = [["]] .. info.secondary_text .. [["]]
local enable_icon = [["]] .. info.enabled_icon .. [["]]
local prog_good = [["]] .. info.progress_good .. [["]] 
local butt = info.button
local disable_icon = [["]] .. info.disabled_icon .. [["]]
local acc = [["]] .. info.accent .. [["]]

my_gui = gui{
    {"text", "hallo", {color = butt}}
    --{"text", "█", {color = prog_bad}},
    --{"text", "█", {color = prog_bad}},
    --{"text", "█", {color = butt}},
    --{"new_line", 1},
    --{"text", "█", {color = disable_icon}},
    --{"text", "█", {color = enable_icon}},
    --{"text", "█", {color = prim_txt}},
    --{"text", "█", {color = sec_txt}},
    --{"text", "█", {color = butt_txt}},
    --{"text", "█", {color = prog}}
}

    my_gui.render()


end
