
local whatsound = Instance.new("Sound", game.Workspace)
whatsound.SoundId = "rbxassetid://7861818231"

if not whatsound.IsLoaded then
	whatsound.Loaded:Wait()
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
local what2 = (math.random(1, 10))
print (what2)
if what2 == 1 then
	whatsound:Play()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/smile.lua'))()
end