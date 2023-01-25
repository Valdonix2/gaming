
local whatsound = Instance.new("Sound", game.Workspace)
whatsound.SoundId = "rbxassetid://1257081652"

if not whatsound.IsLoaded then
	whatsound.Loaded:Wait()
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
local what1 = (math.random(1, 15))
print (what1)
if what1 == 1 then
	whatsound:Play()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/overseer.lua'))()
end