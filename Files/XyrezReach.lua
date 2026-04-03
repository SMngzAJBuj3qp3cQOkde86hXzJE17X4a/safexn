loadstring(game:HttpGet('https://raw.githubusercontent.com/MaxicsSoft/XyrezAutoRank/main/idk.lua'))()

_G.Reach = 20
_G.ReachOn = false

game:GetService('RunService').Stepped:Connect(function()
    if _G.ReachOn then
        pcall(function()
            local _ = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Handle
            local v1, v2, v3 = pairs(game.Players:GetPlayers())

            while true do
                local v4

                v3, v4 = v1(v2, v3)

                if v3 == nil then
                    break
                end
                if v4 ~= game.Players.LocalPlayer and (v4.Character:FindFirstChild('Left Arm') and (game.Players.LocalPlayer.Character.Torso.Position - v4.Character.Torso.Position).Magnitude <= _G.Reach) then
                    local v5, v6, v7 = pairs({
                        'Left Arm',
                        'Left Leg',
                        'Right Arm',
                        'Right Leg',
                    })

                    while true do
                        local v8

                        v7, v8 = v5(v6, v7)

                        if v7 == nil then
                            break
                        end

                        v4.Character[v8]:BreakJoints()

                        v4.Character[v8].Transparency = 1
                        v4.Character[v8].CanCollide = false
                        v4.Character[v8].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 0, -3.5)
                    end
                end
            end
        end)
    end
end)

local v9 = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local _CreateWindow = v9.CreateWindow
local v11 = {
    Name = 'Xyrez Hub',
    LoadingTitle = 'Xyrez Hub Interface',
    LoadingSubtitle = 'by Soeonedks (mamano)',
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = 'XyrezHub',
    },
    Discord = {
        Enabled = true,
        Invite = 'Bv2FqprcMC',
        RememberJoins = true,
    },
    KeySystem = false,
}
local v12 = {
    Title = 'Untitled',
    Subtitle = 'Key System',
    Note = 'No method of obtaining the key is provided',
    FileName = 'Key',
    SaveKey = true,
    GrabKeyFromSite = false,
    Actions = {
        {
            Text = 'Click here to copy the key link <--',
            OnPress = function()
                print('Pressed')
            end,
        },
    },
    Key = {
        'Hello',
    },
}

v11.KeySettings = v12

local _Reach = _CreateWindow(v9, v11):CreateTab('Reach', 4483362458)

_Reach:CreateToggle({
    Name = 'Reach',
    CurrentValue = false,
    Flag = 'Toggle1',
    Callback = function(p14)
        _G.ReachOn = p14
    end,
})
_Reach:CreateSlider({
    Name = 'Reach Slider',
    Range = {0, 100},
    Increment = 1,
    Suffix = 'Magnitude',
    CurrentValue = 20,
    Flag = 'Slider1',
    Callback = function(p15)
        _G.Reach = p15
    end,
})

if game:GetService('CoreGui'):WaitForChild('ArrayField'):WaitForChild('Main') then
    local _UIScale = Instance.new('UIScale')

    _UIScale.Scale = 0.85
    _UIScale.Parent = game:GetService('CoreGui'):WaitForChild('ArrayField'):WaitForChild('Main')
end
