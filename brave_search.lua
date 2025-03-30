-- name = "Brave Search"
-- description = "Search anything in Brave browser"
-- data_source = "internal"
-- type = "search"
-- author = "ProfHasenbein"
-- version = "1.0"
-- prefix = "brave|bv"

text_from = ""
text_to = ""
brave_intent_action = "android.intent.action.VIEW"
brave_package_name = "com.brave.browser"

local md_color = require "md_colors"
local orange = md_colors.orange_800

function on_search(input)
    text_from = input
    text_to = "https://search.brave.com/search?q=" .. input
    search:show({input}, {orange})
end

function on_click(idx)
    intent:start_activity{
        action = brave_intent_action,
        package = brave_package_name,
        data = text_to
    }
end
