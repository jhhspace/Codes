-- Here's what you need to get this script working
-- 1) Obviously a door
-- 2) Make 2 Sound object
-- 2a) Name any one of them "Open" and the other one "Close" (Do not put "" into the name of the Sound object)
-- 2b) Put this ID into the "Close" Sound object: rbxassetid://6058561501
-- 2c) Put this ID into the "Open" Sound object: rbxassetid://192416578
-- 3) Add a Object called ProximityPrompt
-- 4) Add a Script (NOT LOCAL SCRIPT)
-- 4a) Name the script DoorScript
-- 4b) Put the script below here into DoorScript


-- Depend on how you name or design your door, feel free to change the script below
local TweenService = game:GetService("TweenService")
local door = script.Parent
local doorHinge = door.PrimaryPart
local doorOpen = TweenInfo.new()

local doorCFrame = TweenService:Create(doorHinge, doorOpen, {
	CFrame = doorHinge.CFrame * CFrame.Angles(0, math.rad(-100),0)--Change 100 to whatever value. Range of swing.
})

local doorCFrameClosed = TweenService:Create(doorHinge, doorOpen, {
	CFrame = doorHinge.CFrame * CFrame.Angles(0, math.rad(0),0)--Change 100 to whatever value. Range of swing.
})

-- DO NOT TOUCH THE SCRIPT HERE
local ProximityPrompt = script.Parent.ProximityPrompt
local PromptVanish = ProximityPrompt.Enabled == false -- Turn ProximityPrompt off
local PromptAppear = ProximityPrompt.Enabled == true -- Turn ProximityPrompt on

ProximityPrompt.Triggered:Connect(function()
	doorCFrame:Play()
	ProximityPrompt.Enabled = false
	script.Parent.Open:Play() -- rbxassetid://192416578
	wait(3) -- Door will open for this long, feel free to tweak this
	doorCFrameClosed:Play() -- rbxassetid://192416578
	ProximityPrompt.Enabled = true
	wait(1)
	script.Parent.Close:Play() -- rbxassetid://192416578

end)

-- AH YES, credits for Frogrotten_Deb for the skript
