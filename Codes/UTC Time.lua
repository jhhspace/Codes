-- Here's what you need
-- 1) Make a part
-- 2) Add SurfaceGUI into the part
-- 3) Add Frame into the SurfaceGUI
-- 4) Add TextLabel into Frame
-- 5) Add a Script (NOT LOCAL SCRIPT) into the TextLabel
-- 6) Insert the code below into the Script


local TextLabel = script.Parent

while true do
	wait(1)
	TextLabel.Text = os.date("UTC Time: %H:%M:%S", os.time())
end
