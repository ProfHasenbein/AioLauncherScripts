-- test script

-- name = "Currency Chart (exchangeratesapi.io)"
-- description = "Widget that displays the historical exchange rate chart for NOK (target) vs EUR (base) using exchangeratesapi.io"
-- author = "Your Name"
-- version = "1.0"

local base = "EUR"         -- Base currency
local target = "NOK"       -- Target currency
local historyPoints = {}   -- Table for chart data

-- Replace with your actual API key from exchangeratesapi.io
local access_key = "3d6a5ee055fc220beec2b9bc04ba665d"
local apiUrl = "https://api.exchangeratesapi.io/history"

-- Calculate date range: last 30 days
local end_date = os.date("%Y-%m-%d")
local start_date = os.date("%Y-%m-%d", os.time() - 30 * 24 * 60 * 60)

function fetchRates()
    local url = apiUrl .. "?access_key=" .. access_key ..
                "&start_at=" .. start_date ..
                "&end_at=" .. end_date ..
                "&base=" .. base ..
                "&symbols=" .. target
    http:get(url, "history")
end

function on_alarm()
    fetchRates()
end

function on_click()
    fetchRates()
end

function on_network_result_history(result, error)
    if code ~= 200 then
        ui:show_text("Error fetching data: " .. tostring(code))
        return
    end

    local data = json.decode(result)
    if not data or not data.rates then
        ui:show_text("Invalid data received")
        return
    end

    local points = {}
    -- data.rates is a table with keys as dates (YYYY-MM-DD) and values as tables { [target] = rate }
    local dates = {}
    for date, _ in pairs(data.rates) do
        table.insert(dates, date)
    end
    table.sort(dates)  -- Sort dates in chronological order

    for i, date in ipairs(dates) do
        local year = tonumber(date:sub(1,4))
        local month = tonumber(date:sub(6,7))
        local day = tonumber(date:sub(9,10))
        local timestamp = os.time({year=year, month=month, day=day})
        local rate = data.rates[date][target]
        table.insert(points, {timestamp * 1000, rate})
    end

    local change = ""
    if #points >= 2 then
        local last_rate = points[#points][2]
        local prev_rate = points[#points - 1][2]
        local percent_change = ((last_rate - prev_rate) / prev_rate) * 100
        change = string.format(" (%.2f%%)", percent_change)
    end

    local title = target .. " Exchange Rate (" .. base .. ")"
    local subtitle = "Latest: " .. points[#points][2] .. change
    ui:show_chart(points, "x:date y:number", title, true, subtitle)
end

function on_resume()
    ui:show_text("Loading data...")
    fetchRates()
end

function on_settings()
    ui:show_dialog("Settings not implemented")
end
