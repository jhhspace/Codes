-- Here's what you need
-- 1) Add a LocalScript (NOT SCRIPT) into the Music script
-- 2) Rename the LocalScript to LocalBackgroundMusic
-- 3) Disable LocalBackgroundMusic in properties
-- 4) Insert the code below into LocalBackgroundMusic

local sound = script.Sound
local id = 0

while true do
	sound:Stop()
	local song = script
	local choice = {song.Song1, song.Song2, song.Song3}
	local numbers = math.random(1,3)
	id = choice[numbers].Value
	
	repeat wait(1)
		if id == script.PreSong.Value then
			print("Song repeated for "..script.Parent.Parent.Name..", choosing again!")
			local song = script
			local choice = {song.Song1, song.Song2, song.Song3}
			local numbers = math.random(1,3)
			id = choice[numbers].Value
		end
	until id ~= script.PreSong.Value
	sound.SoundId = "http://www.roblox.com/asset/?id="..id
	wait(5)
	local sdelay = sound.TimeLength
	script.PreSong.Value = id
	sound:Play()
	wait(sdelay)
end
-- Thats all!
