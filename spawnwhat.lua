game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
local what = (math.random(1, 8))
print (what)
if what == 1 then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/what.lua'))()
end
