-- name = "aiofetch"
-- type = "widget"
-- description = "neofetch-like status information"
-- author = "ProfHasenbein"
-- version = "1.0"

local icon_arch = [[
<?xml version="1.0" encoding="utf-8"?>
<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="150" height="150" viewBox="0 0 48 48">
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

local lang = ""

local battery_percent = ""
local battery_temp = ""
local battery_voltage = ""
local battery_status = ""

local sys_storage_total = ""
local sys_storage_free = ""
local sys_connection = ""
local sys_launcher = ""
local sys_device = ""
local sys_android = ""
local sys_mem_total = ""
local sys_mem_free = ""
local sys_ssd_total = ""
local sys_ssd_free = ""

function on_tick(ticks)
    -- Update one time per 10 seconds
    if ticks % 10 ~= 0 then
        return
    end

    local lang = "Language: " .. system:lang()

    local batt_info = system:battery_info()
    local sys_info = system:system_info()

    -- Save battery values
    battery_percent = "Battery: " .. batt_info.percent .. "%"
    battery_temp = "Temp: " .. batt_info.temp .. "°C"
    battery_voltage = batt_info.voltage .. " mV"
    battery_status = batt_info.status

    -- Save System values
    sys_storage_total = sys_info.storage_total--40
    sys_storage_free =  sys_info.storage_available
    sys_connection = "Connection: " .. sys_info.connection
    sys_launcher = "Launcher: " .. sys_info.aio_version
    sys_device = "Host: " .. sys_info.device
    sys_android = "OS: Android " .. sys_info.android_version
    sys_mem_total = sys_info.mem_total
    sys_mem_free = sys_info.mem_available
    sys_ssd_total = sys_info.sdcard_total
    sys_ssd_free = sys_info.sdcard_available
   
    -- Storage calculation
    local sys_storage_unit = sys_storage_total:gsub("[^%a]", "")
    local sys_storage_max = sys_storage_total:gsub("[^0-9%.]", "")
    local sys_storage_free = sys_storage_free:gsub("[^0-9%.]","")
    sys_storage = "Storage: " ..  sys_storage_max - sys_storage_free .. " " .. sys_storage_unit .. " / " .. sys_storage_total

    -- Memory calculation
    local sys_mem_unit = sys_mem_total:gsub("[^%a]", "")
    local sys_mem_max = sys_mem_total:gsub("[^0-9%.]", "")
    local sys_mem_free = sys_mem_free:gsub("[^0-9%.]","")
    sys_mem = "Memory: " .. sys_mem_max - sys_mem_free .. " " .. sys_mem_unit  .. " / " .. sys_mem_total


    -- UI output
    
    local divider = "---------------------------------------------<br>"
    
    my_gui = gui{
        {"spacer", 2},
        {"icon", "svg:"..icon_arch, {size = 150}},
        {"spacer", 4},
        {"text", "nibblus@android<br>"
          .. divider
          .. sys_android .. "<br>"
          .. lang .. "<br>"
          .. sys_device .. "<br>" 
	  .. sys_mem  .. "<br>"
          .. sys_storage .. "<br>"
          .. battery_percent .. "<br>"
          .. battery_temp
         },
    }

    my_gui.render()
end
