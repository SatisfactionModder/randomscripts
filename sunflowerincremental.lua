local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Sunflower Incremental", "Midnight")




-- Credits Tab
local CreditsTab = Window:NewTab("Credits")
local Credits = CreditsTab:NewSection("Developed By Avasacas Using Kavo UI Library")
Credits:NewKeybind("Toggle GUI", "Used To Toggle UI", Enum.KeyCode.LeftControl, function()
    Library:ToggleUI()
end)

_G.FLOWERTP = false
_G.ON = false
local flowers = game.workspace.Debris    
local MAINtab = Window:NewTab("Cheats")
local SECTIONMAIN = MAINtab:NewSection("Cheats")



SECTIONMAIN:NewButton("Tp to flowers", "", function(toggle)
    
       _G.FLOWERTP = not _G.FLOWERTP

       local status;
       if _G.FLOWERTP then
           status = "On"
       else
           status = "Off"
       end
       
       game:GetService("StarterGui"):SetCore("SendNotification",{
           Title = "Toggle Flower Tp", -- Required
           Text = "Toggled To: "..status, -- Required
       })


       while _G.FLOWERTP do
        wait()
        print("Hello!")
        for i,obj in flowers:GetChildren() do
            print("HELLO")
            if obj:IsA("Model") then
                local plr = game.Players.LocalPlayer.Character
                plr.HumanoidRootPart.CFrame = obj:FindFirstChildOfClass("Part").CFrame
            end
        end
    end
end)


 

SECTIONMAIN:NewButton("Autobuy Upg", "", function(toggle)
    
    if _G.ON then
        _G.ON = false
    else
        _G.ON = true
    end
    
    
    local status;
    if _G.ON then
        status = "On"
    else
        status = "Off"
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Toggle Autobuy", -- Required
        Text = "Toggled To: "..status, -- Required
    })
    
    
    
    while _G.ON do
    wait()
    local args = {
        [1] = "Flower",
        [2] = "Max"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    
    local args = {
        [1] = "Speed",
        [2] = "Max"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    
    local args = {
        [1] = "Amount",
        [2] = "Max"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    
    local args = {
        [1] = "Flower2"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    
    local args = {
        [1] = "Range"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    
    local args = {
        [1] = "Amount2"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpgradeStat"):FireServer(unpack(args))
    end
end)
