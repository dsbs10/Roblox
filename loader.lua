local player = game.Players.LocalPlayer
local lib =loadstring(game:HttpGet("https://pastebin.com/raw/JsdM2jiP",true))()
lib.options.underlinecolor = "rainbow"

local MainScripts = lib:CreateWindow("Main Scripts")
local MiscScripts = lib:CreateWindow("Misc Scripts")
local Gclose = lib:CreateWindow("Exit")

-- Main Scripts

local Saber = MainScripts:Button("Saber Simulator (OP)", function()
--Settings
shared.Settings = {
    ['Size'] = UDim2.new(0, 630, 0, 360),
    ['Theme'] = true,-- Halloween = Halloween Mode, true == Dark Mode, false == White Mode
    ['Key'] = 'RightShift',--Key to toggle ui.
    Options = {
        ['ServerHop'] = false, --// Set this on before setting "BossFarming" to true
        ['BossFarming'] = false, --// Make sure serverhop is on or it wont work.
    }
}
--Script
loadstring(game:HttpGet("https://raw.githubusercontent.com/IvesAwadiV3rmillion/Saber-Simulator/script/script.lua"))()
end)
local Strelizia = MainScripts:Button("Strelizia (BGS)", function()
    loadstring(game:HttpGet(("http://roguefamily.com/script/streleziaBGSbeta/script"),true))()
end)

-- Misc Scripts

local DevDependency = MiscScripts:Button("Dex Explorer (v4)", function()
    loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)

local Speedhc = MiscScripts:Button("Speed Hack", function()
    while wait(.1) do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
end)

local Radmin = MiscScripts:Button("Reviz Admin", function()
loadstring(game:HttpGet("https://pastebin.com/raw/ibFPdiF7"))()
end)

local AntiAfk = MiscScripts:Button("Anti Afk", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(
    function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end)

-- Exit GUI Script
local kill = Gclose:Button("X", function()
    game:GetService("CoreGui").ScreenGui:Destroy()
end)