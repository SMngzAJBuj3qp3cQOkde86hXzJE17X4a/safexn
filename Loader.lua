--used moonsec and wearedevs obfuscation btw :(

local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/jjengu/librarys/refs/heads/main/mercury/source.lua"))()

local L_2_ = L_1_:Create{
	Name = "XN Loader",
	Size = UDim2.fromOffset(600, 400),
	Theme = L_1_.Themes.Dark,
	Link = "Brought to you by lawcent"
}

local function L_3_func(L_5_arg0, L_6_arg1)
	L_2_:Notification{
		Title = "XN Loader",
		Text  = L_5_arg0,
		Duration = L_6_arg1 or 3,
		Callback = function()
		end
	}
end


local L_4_ = {
	{
		tabName    = "NICXHUB",
		scriptName = "Orignal script (maybe detected)",
		desc       = "Load the nicxprem script",
		url        = "https://raw.githubusercontent.com/nicxxz/nicxpremium-/refs/heads/main/nicxpremmm",
	},
	{
		tabName    = "XN-HUB",
		scriptName = "XN HUB",
		desc       = "Load the XN HUB script",
		url        = "https://raw.githubusercontent.com/nicxxz/nicxpremium-/refs/heads/main/2x1x1",
	},
    --dont use this garbage
	--[[{
		tabName    = "XN-custom",
		scriptName = "Made by lave_01",
		desc       = "Load the modified XN script by lave_01",
		url        = "https://raw.githubusercontent.com/nicxxz/nicxpremium-/refs/heads/main/lave_01.lua",
	},]]
	{
		tabName    = "XyrezReach",
		scriptName = "XyrezReach",
		desc       = "Load the Xyrez AutoRank reach script",
		url        = "https://raw.githubusercontent.com/MaxicsSoft/XyrezAutoRank/main/StealTimeFromOthers.lua",
	},
}


for L_7_forvar0, L_8_forvar1 in ipairs(L_4_) do

	local L_9_ = L_2_:Tab{
		Name = L_8_forvar1.tabName,
	}

	-- Label showing the script name
	L_9_:Label{
		Name = L_8_forvar1.scriptName,
	}

	-- Launch button
	L_9_:Button{
		Name        = "▶  Launch " .. L_8_forvar1.scriptName,
		Description = L_8_forvar1.desc,
		Callback    = function()
			L_3_func("Loading " .. L_8_forvar1.scriptName .. "...")
			task.spawn(function()
				local L_10_, L_11_ = pcall(function()
					loadstring(game:HttpGet(L_8_forvar1.url, true))()
				end)
				if L_10_ then
					L_3_func(L_8_forvar1.scriptName .. " loaded successfully!", 4)
				else
					L_3_func("Error loading " .. L_8_forvar1.scriptName .. ": " .. tostring(L_11_):sub(1, 60), 5)
				end
			end)
		end
	}

end