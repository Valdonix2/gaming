local whatsound = Instance.new("Sound", game.Workspace)
whatsound.SoundId = "rbxassetid://9114352428"

if not whatsound.IsLoaded then
	whatsound.Loaded:Wait()
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
local what = (math.random(1, 8))
print (what)
if what == 1 then
	whatsound:Play()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/what.lua'))()
end
