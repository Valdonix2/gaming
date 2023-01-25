
local whatsound = Instance.new("Sound", game.Workspace)
whatsound.SoundId = "rbxassetid://9125569577"

if not whatsound.IsLoaded then
	whatsound.Loaded:Wait()
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
local what3 = (math.random(1, 25))
print (what3)
if what3 == 1 then
	whatsound:Play()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/watch.lua'))()
end