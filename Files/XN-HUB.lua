loadstring(game:HttpGet('https://raw.githubusercontent.com/nicxxz/nicxpremium-/refs/heads/main/b.lua'))()
--loadstring(game:HttpGet('https://raw.githubusercontent.com/nicxxz/nicxpremium-/refs/heads/main/loader%20or%20smth'))()

local _call11 = game:GetService('HttpService')
local _call16 = _call11:JSONEncode({
    cmd = 'INVITE_BROWSER',
    nonce = _call11:GenerateGUID(false),
    args = {
        code = 'mG8FGPJW22',
    },
})

http.request({
    Body = _call16,
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = {
        Origin = 'https://discord.com',
        ['Content-Type'] = 'application/json',
    },
})
