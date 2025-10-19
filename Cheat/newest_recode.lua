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
})

Library:Notify("Script Executed", 5, 6696469190)

-- code here

ScriptTab = Window:AddTab("Main", "scroll-text")
VerifiedScriptTab = Window:AddTab("Verified Scripts", "check")
CommunityScriptTab = Window:AddTab("Community Scripts", "book-user")
GameScriptsTab = Window:AddTab("Game scripts sorted", "toy-brick")
DiscordTab = Window:AddTab("Discord", "message-square-more")

TabSett = {
["UI Settings"] = Window:AddTab("UI Settings", "settings")
} -- shity asf

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
			Title = "Script executoroplik ",
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

-- Replace this with your GitHub raw JSON link:
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


-- --GameScriptsTab old
-- local GameScriptsTabLeft = GameScriptsTab:AddLeftGroupbox("Game explame 1", "toy-brick")
-- local Script = GameScriptsTabLeft:AddButton("Load", function ()
-- 	loadstring(Game:HttpGet("link to script to game"))
-- end)
-- local GameScriptsTabRight = GameScriptsTab:AddRightGroupbox("Game explame 2", "toy-brick")
-- local Script = GameScriptsTabRight:AddButton("Load", function ()
-- 	loadstring(Game:HttpGet("link to script to game"))
-- end)
-- local GameScriptsTabLeft = GameScriptsTab:AddLeftGroupbox("Game explame 3", "toy-brick")
-- local Script = GameScriptsTabLeft:AddButton("Load", function ()
-- 	loadstring(Game:HttpGet("link to script to game"))
-- end)
-- local GameScriptsTabRight = GameScriptsTab:AddRightGroupbox("Game explame 4", "toy-brick")
-- local Script = GameScriptsTabRight:AddButton("Load", function ()
-- 	loadstring(Game:HttpGet("link to script to game"))
-- end)

-- --GameScriptsTabEnd old

--code end
local DiscordTabLeft = DiscordTab:AddLeftGroupbox("Discord", "message-square-more")
local DiscordLink = DiscordTabLeft:AddLabel("Discord here", false)


--pasted from explame xd
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place") -- if the game has multiple places inside of it (for example: DOORS)
-- you can use this to save configs for those places separately
-- The path in this script would be: MyScriptHub/specific-game/settings/specific-place
-- [ This is optional ]

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(TabSett["UI Settings"])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(TabSett["UI Settings"])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()