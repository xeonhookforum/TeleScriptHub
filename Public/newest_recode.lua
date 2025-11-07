local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

Library.ForceCheckbox = false -- Forces AddToggle to AddCheckbox
Library.ShowToggleFrameInKeybinds = true

local Window = Library:CreateWindow({
    Title = "TeleScripts Hub",
    Footer = "version: beta-dev", --forever beta
    NotifySide = "Right",
	ToggleKeybind = Enum.KeyCode.Insert
})

Library:Notify("Script Executed", 5, 6696469190)
Library:Notify({
			Title = "Info",
			Description = "Keybind to menu has been set to 'Insert'! ",
			Time = 10,
		})

-- code here

ScriptTab = Window:AddTab("Main", "scroll-text")
VerifiedScriptTab = Window:AddTab("Verified Scripts", "check")
CommunityScriptTab = Window:AddTab("Community Scripts", "book-user")
GameScriptsTab = Window:AddTab("Game scripts sorted", "toy-brick")
DiscordTab = Window:AddTab("Discord", "message-square-more")

-- ScriptTab
local ScriptTabLeft = ScriptTab:AddLeftGroupbox("Scripts", "computer")
local ScriptTabRight = ScriptTab:AddRightGroupbox("In-Script executor", "syringe")

local script_execute = ""
ScriptTabRight:AddInput("Script Code", { 
	Callback = function(Value)
		script_execute = Value
	end,
})

ScriptTabLeft:AddButton("Execute custom code", function()
    local func, err = loadstring(script_execute)
    if func then
		Library:Notify({
			Title = "Script executor ",
			Description = "Script executed!",
			Time = 1,
		})
        func()
    else
		Library:Notify({
			Title = "Script executor",
			Description = "Script fail to execute, check console: " .. tostring(err),
			Time = 1,
		})
        warn("Error in code: " .. tostring(err))
    end
end)
-- ScriptTabEnd
-- VerifiedScriptTab
local HttpService = game:GetService("HttpService")

-- yes yes 100% no chat gpt
local jsonUrl = "https://raw.githubusercontent.com/xeonhookforum/TeleScriptHub/refs/heads/main/GameList/verifiedlist.json"

-- Fetch and decode
local success, response = pcall(function()
	return game:HttpGet(jsonUrl)
end)

if success then
	local games = HttpService:JSONDecode(response)

	for i, gameData in ipairs(games) do
		-- Alternate between Left and Right groupboxes
		local groupbox
		if i % 2 == 1 then
			groupbox = VerifiedScriptTab:AddLeftGroupbox(gameData.name, gameData.icon)
		else
			groupbox = VerifiedScriptTab:AddRightGroupbox(gameData.name, gameData.icon)
		end

		if gameData.label and gameData.label ~= "" then
			groupbox:AddLabel("> " .. gameData.label)
		end

		-- Add the button
		groupbox:AddButton("Load", function()
			local ok, err = pcall(function()
				Library:Notify({
					Title = gameData.name,
					Description = "Loading",
					Time = 1,
				})
				loadstring(game:HttpGet(gameData.script_url))()
				Library:Notify({
					Title = gameData.name,
					Description = "Loaded successfly",
					Time = 1,
				})
			end)
			if not ok then
				warn("Failed to load script for " .. gameData.name .. ": " .. tostring(err))
				Library:Notify({
					Title = gameData.name,
					Description = "Error: " .. tostring(err),
					Time = 5,
				})
			end
		end)
	end
else
	warn("Failed to fetch games list from GitHub!")
end

--VerifiedScriptTabEnd
--CommunityScriptTab
local HttpService = game:GetService("HttpService")

-- Replace this with your GitHub raw JSON link:
local jsonUrl = "https://raw.githubusercontent.com/xeonhookforum/TeleScriptHub/refs/heads/main/GameList/community_list.json"

-- Fetch and decode
local success, response = pcall(function()
	return game:HttpGet(jsonUrl)
end)

if success then
	local games = HttpService:JSONDecode(response)

	for i, gameData in ipairs(games) do
		-- Alternate between Left and Right groupboxes
		local groupbox
		if i % 2 == 1 then
			groupbox = CommunityScriptTab:AddLeftGroupbox(gameData.name, gameData.icon)
		else
			groupbox = CommunityScriptTab:AddRightGroupbox(gameData.name, gameData.icon)
		end

		if gameData.label and gameData.label ~= "" then
			groupbox:AddLabel("> " .. gameData.label)
		end

		-- Add the button
		groupbox:AddButton("Load", function()
			local ok, err = pcall(function()
				Library:Notify({
					Title = gameData.name,
					Description = "Loading",
					Time = 1,
				})
				loadstring(game:HttpGet(gameData.script_url))()
				Library:Notify({
					Title = gameData.name,
					Description = "Loaded successfly",
					Time = 1,
				})
			end)
			if not ok then
				warn("Failed to load script for " .. gameData.name .. ": " .. tostring(err))
				Library:Notify({
					Title = gameData.name,
					Description = "Error: " .. tostring(err),
					Time = 5,
				})
			end
		end)
	end
else
	warn("Failed to fetch games list from GitHub!")
end

--CommunityScriptTabEnd
--// GameScriptsTab dynamic loading from GitHub JSON
local HttpService = game:GetService("HttpService")

-- Replace this with your GitHub raw JSON link:
local jsonUrl = "https://raw.githubusercontent.com/xeonhookforum/TeleScriptHub/refs/heads/main/GameList/list.json"

-- Fetch and decode
local success, response = pcall(function()
	return game:HttpGet(jsonUrl)
end)

if success then
	local games = HttpService:JSONDecode(response)

	for i, gameData in ipairs(games) do
		-- Alternate between Left and Right groupboxes
		local groupbox
		if i % 2 == 1 then
			groupbox = GameScriptsTab:AddLeftGroupbox(gameData.name, gameData.icon)
		else
			groupbox = GameScriptsTab:AddRightGroupbox(gameData.name, gameData.icon)
		end

		if gameData.label and gameData.label ~= "" then
			groupbox:AddLabel("> " .. gameData.label)
		end

		-- Add the button
		groupbox:AddButton("Load", function()
			local ok, err = pcall(function()
				Library:Notify({
					Title = gameData.name,
					Description = "Loading",
					Time = 1,
				})
				loadstring(game:HttpGet(gameData.script_url))()
				Library:Notify({
					Title = gameData.name,
					Description = "Loaded successfly",
					Time = 1,
				})
			end)
			if not ok then
				warn("Failed to load script for " .. gameData.name .. ": " .. tostring(err))
				Library:Notify({
					Title = gameData.name,
					Description = "Error: " .. tostring(err),
					Time = 5,
				})
			end
		end)
	end
else
	warn("Failed to fetch games list from GitHub!")
end

--// GameScriptsTabEnd
Library:SetWatermarkVisibility(true)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;
 
local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;
 
    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;
 
    Library:SetWatermark(('TeleScript | %s fps | %s ms | discord.gg/3yUmMAUz85'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

--code end
local DiscordTabLeft = DiscordTab:AddLeftGroupbox("Discord", "message-square-more")
local DiscordLink = DiscordTabLeft:AddLabel("https://discord.gg/3yUmMAUz85", false)
local DiscordJoin = DiscordTabLeft:AddButton("Join", function()
    setclipboard("https://discord.gg/3yUmMAUz85")
	toclipboard("https://discord.gg/3yUmMAUz85")
	Library:Notify({
					Title = "Discord",
					Description = "Coppied to cliboard",
					Time = 5,
				})
end)

--credits
local CreditsTab = Window:AddTab("Credits", "code")
local CreditsLeftGroupBox = CreditsTab:AddLeftGroupbox("Coders", "code")
local CreditsRightGroupBox = CreditsTab:AddRightGroupbox("Thanks to", "thumbs-up")

local xeon_leon_coder = CreditsLeftGroupBox:AddLabel("[<font color=\"rgb(73, 230, 133)\">xeon_leon</font>] Main coder")
local mspaint_lib_credits = CreditsRightGroupBox:AddLabel("[<font color=\"rgb(73, 230, 133)\">Obsidian (mspaint lib)</font>] Used lib and nice lib", true)
-- settings
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
 
-- register the library so ThemeManager can manipulate controls
ThemeManager:SetLibrary(Library)
 
-- optional: keep themes inside a custom folder
ThemeManager:SetFolder("TeleScriptV1")
 
local SettingsTab = Window:AddTab("UI Settings", "settings")
 
-- automatically creates the color pickers, theme lists and buttons
ThemeManager:ApplyToTab(SettingsTab)
 
-- apply whatever theme is flagged as default (built-in or custom)
ThemeManager:LoadDefault()

IsTeleScriptRunning = true