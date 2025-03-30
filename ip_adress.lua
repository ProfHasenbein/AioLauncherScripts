-- name = "Public IP"
-- description = "Shows your public IP address"
-- data_source = "ipify.org"
-- type = "widget"
-- author = "ProfHasenbein"
-- version = "1.0"

network_result_received = false
start_time = nil

function on_resume()
    network_result_received = false
    start_time = os.time()
    http:get("https://api.ipify.org")
end

function on_network_result(result, code)
    if network_result_received then return end
    network_result_received = true
    
    if not code or code < 200 or code >= 300 then
        result = "not connected"
    end

    gui{
        {"text", result, {gravity = "center_h"}}
    }.render()
end


function on_tick(ticks)
    if not network_result_received and os.difftime(os.time(), start_time) >= 1 then
        on_network_result("not connected", 0)
    end
end
