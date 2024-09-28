--[hello this is beta so dont expect super good ]]

print("Credits to cheerful_cheetah_59132 (me) ")
print("people at https://octane.lol are vevy nice")

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local body = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local list = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local placeholder = Instance.new("Frame")
local placeholder2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.415708005, 0, 0.284636468, 0)
Frame.Size = UDim2.new(0, 382, 0, -33)

body.Name = "body"
body.Parent = Frame
body.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
body.BorderColor3 = Color3.fromRGB(0, 0, 0)
body.BorderSizePixel = 0
body.Position = UDim2.new(0, 0, 1, 0)
body.Size = UDim2.new(0, 382, 0, 238)

UICorner.Parent = body

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0313512981, 0, -0.533545315, 0)
TextLabel.Size = UDim2.new(0, 192, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Text"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.Parent = TextLabel

list.Name = "list "
list.Parent = Frame
list.BackgroundColor3 = Color3.fromRGB(153, 172, 181)
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.BorderSizePixel = 0
list.Position = UDim2.new(-0.00038826029, 0, 8.8190546, 0)
list.Size = UDim2.new(0, 382, 0, 40)

UICorner_3.Parent = list

placeholder.Name = "place holder"
placeholder.Parent = Frame
placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeholder.BorderColor3 = Color3.fromRGB(0, 0, 0)
placeholder.BorderSizePixel = 0
placeholder.Position = UDim2.new(-0.000586544629, 0, 8.17071915, 0)
placeholder.Size = UDim2.new(0, 16, 0, 32)

placeholder2.Name = "place holder 2"
placeholder2.Parent = Frame
placeholder2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeholder2.BorderColor3 = Color3.fromRGB(0, 0, 0)
placeholder2.BorderSizePixel = 0
placeholder2.Position = UDim2.new(0.957528651, 0, 8.17071915, 0)
placeholder2.Size = UDim2.new(0, 16, 0, 32)

UICorner_4.CornerRadius = UDim.new(0, 0)
UICorner_4.Parent = Frame

-- Scripts:

local function IJMVINF_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(IJMVINF_fake_script)()

