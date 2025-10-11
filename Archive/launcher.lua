-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_launcher"] = Instance.new("Frame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UICorner"] = Instance.new("UICorner");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_xapitext"] = Instance.new("TextLabel");
	["_xcmdtext"] = Instance.new("TextLabel");
	["_TextButton"] = Instance.new("TextButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_wait"] = Instance.new("LocalScript");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_UICorner1"] = Instance.new("UICorner");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_launcher"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_launcher"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_launcher"].BorderSizePixel = 0
Converted["_launcher"].Position = UDim2.new(0.364636838, 0, 0.203980103, 0)
Converted["_launcher"].Size = UDim2.new(0, 383, 0, 507)
Converted["_launcher"].Name = "launcher"
Converted["_launcher"].Parent = Converted["_ScreenGui"]

Converted["_TextLabel"].Font = Enum.Font.SourceSans
Converted["_TextLabel"].Text = "Xeon/XExploit Launcher"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].TextScaled = true
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(173.00000488758087, 173.00000488758087, 173.00000488758087)
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Size = UDim2.new(0, 383, 0, 50)
Converted["_TextLabel"].Parent = Converted["_launcher"]

Converted["_UICorner"].CornerRadius = UDim.new(0.100000001, 8)
Converted["_UICorner"].Parent = Converted["_TextLabel"]

Converted["_TextLabel1"].Font = Enum.Font.SourceSans
Converted["_TextLabel1"].Text = "VER: 1.1"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].TextScaled = true
Converted["_TextLabel1"].TextSize = 14
Converted["_TextLabel1"].TextWrapped = true
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 0.5
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Position = UDim2.new(0, 0, 0.218934909, 0)
Converted["_TextLabel1"].Size = UDim2.new(0, 383, 0, 50)
Converted["_TextLabel1"].Parent = Converted["_launcher"]

Converted["_xapitext"].Font = Enum.Font.SourceSans
Converted["_xapitext"].Text = "XAPI: OK"
Converted["_xapitext"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_xapitext"].TextScaled = true
Converted["_xapitext"].TextSize = 14
Converted["_xapitext"].TextWrapped = true
Converted["_xapitext"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_xapitext"].BackgroundTransparency = 0.5
Converted["_xapitext"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_xapitext"].BorderSizePixel = 0
Converted["_xapitext"].Position = UDim2.new(0, 0, 0.337278098, 0)
Converted["_xapitext"].Size = UDim2.new(0, 383, 0, 50)
Converted["_xapitext"].Name = "xapitext"
Converted["_xapitext"].Parent = Converted["_launcher"]

Converted["_xcmdtext"].Font = Enum.Font.SourceSans
Converted["_xcmdtext"].Text = "XLAUNCHER: OK"
Converted["_xcmdtext"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_xcmdtext"].TextScaled = true
Converted["_xcmdtext"].TextSize = 14
Converted["_xcmdtext"].TextWrapped = true
Converted["_xcmdtext"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_xcmdtext"].BackgroundTransparency = 0.5
Converted["_xcmdtext"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_xcmdtext"].BorderSizePixel = 0
Converted["_xcmdtext"].Position = UDim2.new(0, 0, 0.44970414, 0)
Converted["_xcmdtext"].Size = UDim2.new(0, 383, 0, 50)
Converted["_xcmdtext"].Name = "xcmdtext"
Converted["_xcmdtext"].Parent = Converted["_launcher"]

Converted["_TextButton"].Font = Enum.Font.SourceSans
Converted["_TextButton"].Text = "Load Xeon"
Converted["_TextButton"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].TextScaled = true
Converted["_TextButton"].TextSize = 14
Converted["_TextButton"].TextWrapped = true
Converted["_TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].BackgroundTransparency = 0.5
Converted["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].BorderSizePixel = 0
Converted["_TextButton"].Position = UDim2.new(0.219321147, 0, 0.824457586, 0)
Converted["_TextButton"].Size = UDim2.new(0, 200, 0, 50)
Converted["_TextButton"].Parent = Converted["_launcher"]

Converted["_UICorner1"].CornerRadius = UDim.new(0.100000001, 8)
Converted["_UICorner1"].Parent = Converted["_launcher"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function YXMQLE_fake_script() -- Fake Script: StarterGui.ScreenGui.launcher.TextButton.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_TextButton"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	-- Reference the button
	local button = script.Parent
	
	-- Define what happens when the button is clicked
	local function onButtonClick()
		print("xeonlauncher: loading xeon...")
		wait (0.5)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/xeonhookforum/XExploit-roblox/refs/heads/main/1.1.lua"))
		
	end
	
	
	
	-- Connect the function to the button's MouseButton1Click event
	button.MouseButton1Click:Connect(onButtonClick)
	
end
local function IBQIQDD_fake_script() -- Fake Script: StarterGui.ScreenGui.launcher.TextButton.wait
    local script = Instance.new("LocalScript")
    script.Name = "wait"
    script.Parent = Converted["_TextButton"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	script.Parent.LocalScript.Disabled = true
	script.Parent.Parent.TextButton.Text = "Load (5)"
	wait(1)
	script.Parent.Parent.TextButton.Text = "Load (4)"
	wait(1)
	script.Parent.Parent.TextButton.Text = "Load (3)"
	wait(1)
	script.Parent.Parent.TextButton.Text = "Load (2)"
	wait(1)
	script.Parent.Parent.TextButton.Text = "Load (1)"
	wait(1)
	script.Parent.LocalScript.Disabled = false
	script.Parent.Parent.TextButton.Text = "Load"
	script.Disabled = true
end
local function SCYAL_fake_script() -- Fake Script: StarterGui.ScreenGui.launcher.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_launcher"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	
	local frame = script.Parent
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	-- Function to update the frame's position as it is dragged
	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	-- When a drag starts
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	-- When dragging is ongoing
	frame.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	-- Update frame position while dragging
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end

coroutine.wrap(YXMQLE_fake_script)()
coroutine.wrap(IBQIQDD_fake_script)()
coroutine.wrap(SCYAL_fake_script)()
