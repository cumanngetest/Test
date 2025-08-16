if game.PlaceId == 101910707689010 then
   
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Clumsy Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Script Fish It",
   LoadingSubtitle = "by Clumsy.exe",
   ShowText = "Clumsy On Top", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Clumsy Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Home", nil) -- Title, Image
local Button = MainTab:CreateButton({
Name = "Infinite Jump",
Callback = function()
--Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump
            
if _G.infinJumpStarted == nil then
--Ensures this only runs once to save resources
_G.infinJumpStarted = true
--Notifies readiness
game.StarterGui:SetCore("SendNotification", {Title="Clumsy Hub"; Text="Infinite Jump Activated!"; Duration=5;})
--The actual infinite jump
local plr = game:GetService('Players').LocalPlayer
local m = plr:GetMouse()
m.KeyDown:connect(function(k)
if _G.infinjump then 
  if k:byte() == 32 then
humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid' )
humanoid:ChangeState("Jumping' )
wait()
humanoid: ChangeState('Seated')
end
                     end
                     end)
               end
            end,
         })
