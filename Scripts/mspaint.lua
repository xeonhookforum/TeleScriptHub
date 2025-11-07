-- Gui to Lua
-- Version: 3.2

-- Instances:

local msloader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

msloader.Name = "msloader"
msloader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
msloader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = msloader
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.367438376, 0, 0.320895523, 0)
Frame.Size = UDim2.new(0, 331, 0, 175)
Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
Frame.Style = Enum.FrameStyle.DropShadow

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(124, 124, 124)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0.176538959, 0)
TextBox.Size = UDim2.new(0, 316, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Enter mspaint key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.111760721, 0, -1.77873881e-05, 0)
TextLabel.Size = UDim2.new(0, 258, 0, 20)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "mspaint.cc Loader"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.850
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.197214365, 0, 0.565420449, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Load"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function KGEEAA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script_key= script.Parent.Parent.TextBox.Text;
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
	end)
end
coroutine.wrap(KGEEAA_fake_script)()
local function JWXMEUT_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		wait(0.5)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(JWXMEUT_fake_script)()
