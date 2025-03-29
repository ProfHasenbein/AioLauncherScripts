local icon1 = [[
<?xml version="1.0" encoding="utf-8"?>
<svg width="200" height="100" viewBox="0 0 200 100" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="100" height="50" fill="#0F0F0F"/>
  <rect x="100" y="0" width="100" height="50" fill="#B00204"/>
  <rect x="0" y="50" width="100" height="50" fill="#606060"/>
  <rect x="100" y="50" width="100" height="50" fill="#D81E1E"/>
</svg>
]]

local icon2 = [[
<?xml version="1.0" encoding="utf-8"?>
<svg width="200" height="100" viewBox="0 0 200 100" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="100" height="50" fill="#3FD700"/>
  <rect x="100" y="0" width="100" height="50" fill="#CECC1B"/>
  <rect x="0" y="50" width="100" height="50" fill="#60FF00"/>
  <rect x="100" y="50" width="100" height="50" fill="#F6F443"/>
</svg>
]]

local icon3 = [[
<?xml version="1.0" encoding="utf-8"?>
<svg width="200" height="100" viewBox="0 0 200 100" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="100" height="50" fill="#6793E1"/>
  <rect x="100" y="0" width="100" height="50" fill="#C615EF"/>
  <rect x="0" y="50" width="100" height="50" fill="#3F68E1"/>
  <rect x="100" y="50" width="100" height="50" fill="#9A0FC0"/>
</svg>
]]

local a = "#679455"

local icon3 = [[
<svg width="200" height="100" viewBox="0 0 200 100" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="100" height="50" fill=a/>
  <rect x="100" y="0" width="100" height="50" fill="#C615EF"/>
  <rect x="0" y="50" width="100" height="50" fill="#3F68E1"/>
  <rect x="100" y="50" width="100" height="50" fill="#9A0FC0"/>
</svg>
]]

function on_resume()
    gui{
        {"icon", "svg:"..icon1, {size = 90}},
        {"icon", "svg:"..icon2, {size = 90}},
        {"icon", "svg:"..icon3, {size = 90}},
	{"icon", "svg:"..icon4, {size = 90}}
    }.render()
end
