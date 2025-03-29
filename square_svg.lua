local icon = [[
<?xml version="1.0" encoding="utf-8"?>
<svg width="900" height="100" viewBox="0 0 900 100" xmlns="http://www.w3.org/2000/svg">
  <!-- Obere Reihe -->
  <rect x="0" y="0" width="100" height="50" fill="#0F0F0F"/>
  <rect x="100" y="0" width="100" height="50" fill="#B00204"/>
  <rect x="200" y="0" width="100" height="50" fill="#3FD700"/>
  <rect x="300" y="0" width="100" height="50" fill="#CECC1B"/>
  <rect x="400" y="0" width="100" height="50" fill="#6793E1"/> <!-- Helleres Blau -->
  <rect x="500" y="0" width="100" height="50" fill="#C615EF"/> <!-- Helleres Violett -->
  <rect x="600" y="0" width="100" height="50" fill="#00BDBD"/>
  <rect x="700" y="0" width="100" height="50" fill="#D3D3D3"/>
  <rect x="800" y="0" width="100" height="50" fill="#FFFFFF"/>

  <!-- Untere Reihe -->
  <rect x="0" y="50" width="100" height="50" fill="#606060"/>
  <rect x="100" y="50" width="100" height="50" fill="#D81E1E"/>
  <rect x="200" y="50" width="100" height="50" fill="#60FF00"/>
  <rect x="300" y="50" width="100" height="50" fill="#F6F443"/>
  <rect x="400" y="50" width="100" height="50" fill="#3F68E1"/> <!-- Dunkleres Blau -->
  <rect x="500" y="50" width="100" height="50" fill="#9A0FC0"/> <!-- Dunkleres Violett -->
  <rect x="600" y="50" width="100" height="50" fill="#00FFFF"/>
  <rect x="700" y="50" width="100" height="50" fill="#D3D3D3"/>
  <rect x="800" y="50" width="100" height="50" fill="#FFFFFF"/>
</svg>
]]


function on_resume()
    gui{
        {"icon", "svg:"..icon, {size = 200}},
    }.render()
end
