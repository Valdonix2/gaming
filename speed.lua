local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "iShowSpeed", -- Custom name of your entity
    Model = "rbxassetid://12242292220", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 25, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        30, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10717776315", -- Image1 url
            Image2 = "rbxassetid://10717776315", -- Image2 url
            Shake = true,
            Sound1 = {
                1034263055, -- SoundId
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                7705506391, -- SoundId
                { Volume = 10 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 2,
            },
        },
    },
    CustomDialog = {"Your ass got clapped by iShowSpeed", "You should probably be a little more fucking careful eh?", "When the fucking lights flicker hide if you want to save your ass"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable)
