--file used in "XN-HUB".lua


local _call3 = game:GetService('Players')
local _call5 = game:GetService('RunService')

game:GetService('UserInputService')

local _call9 = game:GetService('Workspace')
local _call11 = game:GetService('Lighting')
local _call13 = game:GetService('VirtualUser')
local _LocalPlayer14 = _call3.LocalPlayer
local _ = _call9.CurrentCamera
local _call21 = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))():CreateWindow({
    LoadingTitle = 'XN SYSTEMS',
    Name = 'XN SYSTEMS  |  made by nicpls',
    KeySystem = false,
    LoadingSubtitle = 'little kwittens project',
    ConfigurationSaving = {Enabled = false},
})

_G.Reach = 6
_G.ReachOff = true

for _24, _24_2 in ipairs(_call3:GetPlayers())do
    _call3.PlayerAdded:Connect(function(_29, _29_2, _29_3, _29_4, _29_5, _29_6, _29_7)
        for _32, _32_2 in ipairs(_call3:GetPlayers()) do end
    end)
    _call5.Stepped:Connect(function(_37, _37_2, _37_3, _37_4, _37_5, _37_6, _37_7) end)
    _call5.Heartbeat:Connect(function(_41, _41_2, _41_3, _41_4, _41_5, _41_6) end)

    local _call43 = RaycastParams.new()

    _call43.FilterType = Enum.RaycastFilterType.Whitelist

    _call5.RenderStepped:Connect(function(_49, _49_2, _49_3, _49_4, _49_5, _49_6) end)
    _call5.Heartbeat:Connect(function(_53, _53_2, _53_3, _53_4, _53_5, _53_6) end)
    _LocalPlayer14.Idled:Connect(function(_57, _57_2, _57_3, _57_4, _57_5, _57_6)
        _call13:CaptureController()
        _call13.ClickButton1(_call13, Vector2.new(0, 0))
    end)
    _call5.Heartbeat:Connect(function(_67, _67_2, _67_3, _67_4, _67_5, _67_6) end)
    _call21:CreateTab('XN SYSTEMS', 4483362458):CreateParagraph({
        Title = 'XN SYSTEMS',
        Content = 'made by nicpls\nidk what to say here besidessss Join the discord plz discord.gg/MF2Zz6yvJP',
    })

    local _call73 = _call21:CreateTab('Reach & Flicker | XN', 4483362458)

    _call73:CreateToggle({
        CurrentValue = false,
        Name = 'Enable cbring reach',
        Callback = function(_76, _76_2, _76_3, _76_4, _76_5, _76_6, _76_7) end,
    })
    _call73:CreateSlider({
        Name = 'Reach Distance',
        CurrentValue = 6,
        Increment = 1,
        Range = {
            [1] = 1,
            [2] = 20,
        },
        Callback = function(_80, _80_2, _80_3, _80_4, _80_5, _80_6, _80_7) end,
    })
    _call73:CreateToggle({
        CurrentValue = false,
        Name = 'Enable fti reach',
        Callback = function(_83, _83_2, _83_3, _83_4, _83_5, _83_6) end,
    })
    _call73:CreateToggle({
        CurrentValue = false,
        Name = 'Enable Flicker (experimental)',
        Callback = function(_86, _86_2, _86_3, _86_4, _86_5, _86_6) end,
    })
    _call73:CreateSlider({
        Name = 'Flick Offset',
        CurrentValue = 0.4,
        Increment = 0.05,
        Range = {
            [1] = 0,
            [2] = 1,
        },
        Callback = function(_89, _89_2, _89_3, _89_4, _89_5, _89_6) end,
    })

    local _call91 = _call21:CreateTab('Player | XN', 4483362458)

    for _94, _94_2 in ipairs(_call3:GetPlayers())do
        local _call97 = _call91:CreateDropdown({
            Callback = function(_98, _98_2, _98_3, _98_4, _98_5, _98_6)
                _call3:FindFirstChild(_98[1])
            end,
            Options = {},
            Name = 'Select Player',
            CurrentOption = {},
        })

        _call3.PlayerAdded:Connect(function(_105, _105_2, _105_3, _105_4, _105_5, _105_6)
            for _109, _109_2 in ipairs(_call3:GetPlayers())do
                _call97:Set({})
            end
        end)
        _call3.PlayerRemoving:Connect(function(_115, _115_2, _115_3, _115_4, _115_5, _115_6)
            for _119, _119_2 in ipairs(_call3:GetPlayers())do
                _call97:Set({})
            end
        end)
        _call91:CreateButton({
            Name = 'Teleport Behind Player',
            Callback = function(_124, _124_2, _124_3, _124_4, _124_5, _124_6) end,
        })
        _call91:CreateButton({
            Name = 'Spectate Player',
            Callback = function(_128, _128_2, _128_3, _128_4, _128_5, _128_6, _128_7) end,
        })
        _call91:CreateButton({
            Name = 'Teleport To Player',
            Callback = function(_132, _132_2, _132_3, _132_4, _132_5, _132_6, _132_7) end,
        })
        _call91:CreateButton({
            Name = 'Stop Spectate',
            Callback = function(_136, _136_2, _136_3, _136_4, _136_5, _136_6, _136_7)
                local _ = _LocalPlayer14.Character
            end,
        })

        local _call141 = _call21:CreateTab('Fun | XN', 4483362458)

        _call141:CreateButton({
            Name = 'Generate Server Link',
            Callback = function(_144, _144_2, _144_3, _144_4, _144_5, _144_6, _144_7)
                local _149 = 'https://www.roblox.com/games/' .. game.PlaceId .. '/?jobId=' .. game.JobId

                print('XN SERVER LINK:', _149)
                setclipboard(_149)
            end,
        })
        _call141:CreateButton({
            Name = 'Apply Low Graphics',
            Callback = function()
                _call11.GlobalShadows = false

                for _157, _157_2 in ipairs(_call9:GetDescendants()) do end
            end,
        })
        _call141:CreateToggle({
            CurrentValue = false,
            Name = 'Enable VoidWalk     Only use in stfobtab',
            Callback = function(_161, _161_2, _161_3, _161_4, _161_5, _161_6) end,
        })
        _call141:CreateSlider({
            Name = 'Void Height',
            CurrentValue = 0,
            Increment = 1,
            Range = {
                [1] = 0,
                [2] = 20,
            },
            Callback = function(_165, _165_2, _165_3, _165_4, _165_5, _165_6) end,
        })
        _call141:CreateToggle({
            CurrentValue = false,
            Name = 'Auto Chase',
            Callback = function(_168, _168_2, _168_3, _168_4, _168_5, _168_6) end,
        })
        _call141:CreateInput({
            PlaceholderText = 'player name',
            Name = 'Chase Target Name',
            Callback = function(_172, _172_2, _172_3, _172_4, _172_5, _172_6, _172_7)
                for _175, _175_2 in ipairs(_call3:GetPlayers()) do end
            end,
        })
    end
end
