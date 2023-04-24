local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

local Window = Rayfield:CreateWindow({
   Name = "Felineity | Universal",
   LoadingTitle = "Felineity",
   LoadingSubtitle = "by GentlemanKitten",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "FelineityCo", -- Create a custom folder for your hub/game
      FileName = "Universal"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Felineity",
      Subtitle = "Key System",
      Note = "Get key from creator!",
      FileName = "FelineityKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"BetaTester"}-- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Esp", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Player Esp")

Sense.sharedSettings.useTeamColor = true
Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = true
Sense.teamSettings.enemy.boxOutlineColor = { "Team Color", 0 }
Sense.teamSettings.enemy.chams = true
Sense.teamSettings.enemy.chamsFillColor = { "Team Color", 0.5 }
Sense.teamSettings.enemy.chamsOutlineColor = { "Team Color", 0 }
Sense.teamSettings.enemy.healthBar = true
Sense.teamSettings.friendly.enabled = true
Sense.teamSettings.friendly.box = true
Sense.teamSettings.friendly.boxOutlineColor = { "Team Color", 0 }
Sense.teamSettings.friendly.chams = true
Sense.teamSettings.friendly.chamsFillColor = { "Team Color", 0.5 }
Sense.teamSettings.friendly.chamsOutlineColor = { "Team Color", 0 }
Sense.teamSettings.friendly.healthBar = true

local Toggle = Tab:CreateToggle({
   Name = "Enable",
   CurrentValue = false,
   Callback = function(Value)
      if Value == true then
         Sense.Load()
      else
         Sense.Unload()
      end
   end,
})