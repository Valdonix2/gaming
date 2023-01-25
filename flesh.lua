local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Flesh", -- Custom name of your entity
    Model = "https://github.com/Valdonix2/gaming/raw/main/flesh.rbxm", -- Can be GitHub file or rbxassetid
    Speed = 150, -- Percentage, 100 = default Rush speed
    DelayTime = 8, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
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
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://12269240955", -- Image1 url
            Image2 = "rbxassetid://12269240955", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You got killed by Flesh", "Lisen for audio cues that might hint at its arrival.", "You should hide in a closet!"}, -- Custom death message
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