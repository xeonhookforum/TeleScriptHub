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
    Icon = 131620546733151,
    NotifySide = "Right",
})

Library:Notify("Script Executed", 5, 16696469190 )

-- code here

ScriptTab = Window:AddTab("Main", "scroll-text")
VerifiedScriptTab = Window:AddTab("Verified Scripts", "check")
CommunityScriptTab = Window:AddTab("Community Scripts", "book-user")

TabSett = {
["UI Settings"] = Window:AddTab("UI Settings", "settings")
} -- shity asf

-- ScriptTab
local ScriptTabLeft = ScriptTab:AddLeftGroupbox("Scripts", "computer")
local ScriptTabRight = ScriptTab:AddRightGroupbox("In-Script executor", "syringe")

ScriptTabLeft:AddButton("Load DeX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
	Library:Notify({
			Title = "XExploit",
			Description = "Script executed!",
			Time = 1,
		})
end)

ScriptTabLeft:AddButton("Load Infinite yield", function()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
	Library:Notify({
			Title = "XExploit",
			Description = "Script executed!",
			Time = 1,
		})
end)
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
			Title = "XExploit",
			Description = "Script executed!",
			Time = 1,
		})
        func()
    else
		Library:Notify({
			Title = "XExploit",
			Description = "Script fail to execute, check console: " .. tostring(err),
			Time = 1,
		})
        warn("Error in code: " .. tostring(err))
    end
end)



--code end

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