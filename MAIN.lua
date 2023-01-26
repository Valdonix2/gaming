print("Schizophrenia mode loaded")

while true do
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  print("DOOR OPENED")
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/fleshspawn.lua'))()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/smilespawn.lua'))()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/overseerspawn.lua'))()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Valdonix2/gaming/main/watchspawn.lua'))()
	wait(0.5)
end
