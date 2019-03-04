local widget = require ("widget")

local background = display.newImageRect( "background.png", 360, 570 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local tapText = display.newText( "Que pedo puta", display.contentCenterX, 20, native.systemFont, 40)

local function handler (event)
    local phase = event.phase
    if "ended" == phase then
        print("Le picaste cabron")
    end
end
--asdsdfsfd
local count = 0
local textillo = display.newText(count, display.contentCenterX, 80, native.systemFont, 80)
local function increaseCount()
    display.remove(textillo)
    count= count + 1
    textillo = display.newText(count, display.contentCenterX, 80, native.systemFont, 80)
end

background:addEventListener("tap", increaseCount)

