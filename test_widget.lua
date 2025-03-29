-- name = "ZTest Widget"
-- type = "widget"


local icon = [[
<?xml version="1.0" encoding="utf-8"?>
<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0 0 48 48">
    <path fill="#1e88e5" d="M28.465,38.611c0.419-1.105,0.664-2.365,0.664-3.714c0-4.133-2.211-7.494-4.929-7.494
        c-2.741,0-4.951,3.361-4.951,7.494c0,1.326,0.221,2.586,0.641,3.669c-9.041,0.951-15.407,4.731-17.993,6.432
        c4.355-6.278,8.909-13.638,13.262-22.105c1.083-2.101,2.101-4.178,3.05-6.211c0.375,0.243,0.751,0.509,1.171,0.775
        c1.945,1.215,3.759,1.879,5.084,2.233c-0.973-0.73-2.033-1.613-3.116-2.697c-0.817-0.817-1.547-1.637-2.167-2.433
        C21.016,10.538,22.608,6.669,24,3c2.32,6.144,5.217,12.842,8.841,19.893c2.343,4.531,4.731,8.754,7.117,12.644
        c-0.685-0.375-1.437-0.73-2.233-1.039c-1.371-0.53-2.652-0.862-3.759-1.06c1.503,0.751,3.25,1.747,5.084,3.073
        c1.194,0.885,2.254,1.769,3.161,2.631c0.021,0.021,0.021,0.021,0.045,0.045c1.26,2.056,2.565,3.957,3.846,5.813
        C43.561,43.319,37.306,39.605,28.465,38.611z"/>
</svg>
]]

function on_tick(ticks)
    -- Update one time per 10 seconds
    if ticks % 10 ~= 0 then
        return
    end

    local sys_info = system:system_info()
    local sys_strings = stringify_table(sys_info)

function stringify_table(tab) -- line 30
    local new_tab = {}

for k,v in pairs(tab) do
        table.insert(new_tab, capitalize(k)..": "..tostring(v))
    end

    return new_tab
end
    my_gui = gui{
        {"icon", "svg:"..icon, {size = 150}},
	{"spacer", 2},
	{"icon","fa:microphone"},
        {"text", ui:show_lines({sys_strings})},
    }

    my_gui.render()
end
