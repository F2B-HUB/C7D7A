if not game:IsLoaded() then
    game.Loaded:Wait()
end
local ChestTeleporting
local VirtualInputManager = game:GetService("VirtualInputManager")
local Player = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local VCurrentVersion
local function CurrentVersion(v)
    if v then
        VCurrentVersion = v
    end
end
  
local HttpService = game:GetService("HttpService")
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/F2B-HUB/C7D7A/main/UI'))()
task.spawn(function()  
    pcall(function()
        repeat task.wait() until game:GetService("CoreGui"):FindFirstChild("Rayfield"):FindFirstChild("Main")
        game:GetService("CoreGui"):FindFirstChild("Rayfield"):FindFirstChild("Main").Visible = false
    end)
end)
local function Click(v)
    VirtualInputManager:SendMouseButtonEvent(v.AbsolutePosition.X+v.AbsoluteSize.X/2,v.AbsolutePosition.Y+50,0,true,v,1)
    VirtualInputManager:SendMouseButtonEvent(v.AbsolutePosition.X+v.AbsoluteSize.X/2,v.AbsolutePosition.Y+50,0,false,v,1)
end
local function Notify(Message, Duration)
    Rayfield:Notify({
        Title = "F2B HUB",
        Content = Message,
        Duration = Duration,
        Image = 4483362458,
        Actions = {},
    })
end
local function CreateWindow()
    repeat task.wait() until VCurrentVersion
        task.wait()
    return Window
end
return Player, Rayfield, Click, Notify, CreateWindow, CurrentVersion
