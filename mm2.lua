--Roblox MM2 Exploit, made by [ANONYMOUS]
--This exploit was made based on an older version of MM2, and so they might've introduced an Anticheat and then this script would be dead.
--Feel free to modify!
--Also, this exploit uses quite a lot of animations for the UI (I am a game designer/scripter, so of course I know how to make those!)
script.Parent = game.Players.LocalPlayer.PlayerScripts
local TweenService = game.TweenService
local gameStarted = Instance.new("BoolValue")
safeshutdown = false
local ESPON = false
game.ReplicatedStorage.RoundStart.OnClientEvent:Connect(function()
	gameStarted.Value = true
end)
game.ReplicatedStorage.GameOver.OnClientEvent:Connect(function()
	gameStarted.Value = false
end)
warn("MM2GUI Initialized. Loading...")
local GUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui) --Replace game.Players.LocalPlayer.PlayerGui with game.CoreGui if your executor supports it!
--{0, 300},{0, 5}
GUI.Name = "GUI"
GUI.Enabled = false
game.Players.LocalPlayer.PlayerGui.ChildRemoved:Connect(function(child)
	if child == GUI then
		if not safeshutdown then
			warn("WARNING: GUI REMOVED!")
			if ESPON then
				for i,v in pairs(game.Players:GetPlayers()) do
					ESPON = false
					if v.Character.Head:FindFirstChild("MurdGUI") ~= nil then
						v.Character.Head:FindFirstChild("MurdGUI"):Destroy()
					end
				end
			end
			local ScriptClone = script:Clone()
			ScriptClone.Disabled = true
			ScriptClone.Parent = script.Parent
			ScriptClone.Disabled = false
			script:Destroy()
		end
	end
end)
local MainFrame = Instance.new("ImageLabel", GUI)
MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
MainFrame.Position = UDim2.new(0.5,0,0.5,0)
MainFrame.Size = UDim2.new(0,348,0,205)
MainFrame.Image = "rbxassetid://3570695787"
MainFrame.ImageColor3 = Color3.new(0.231373, 0.231373, 0.231373)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(Vector2.new(100,100),Vector2.new(100,100))
MainFrame.SliceScale = 0.12
MainFrame.ImageTransparency = 1
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Selectable = true
local LoadingText = Instance.new("TextLabel", MainFrame)
LoadingText.Position = UDim2.new(0.172,0,0.127,0)
LoadingText.Size = UDim2.new(0,228,0,51)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "LOADING MM2GUI"
LoadingText.TextColor3 = Color3.new(1,1,1)
LoadingText.Name = "LoadingText"
LoadingText.TextTransparency = 1
LoadingText.Font = Enum.Font.SourceSans
LoadingText.TextScaled = true
local LoadingImage = Instance.new("ImageLabel", MainFrame)
LoadingImage.Name = "Frame"
LoadingImage.BackgroundTransparency = 1
LoadingImage.AnchorPoint = Vector2.new(0.5,0.5)
LoadingImage.Position = UDim2.new(0.287,-48,0.676,0)
LoadingImage.Size = UDim2.new(0,0,0,5)
LoadingImage.Image = "rbxassetid://3570695787"
LoadingImage.ImageColor3 = Color3.new(1, 0.333333, 0)
LoadingImage.ImageTransparency = 1
LoadingImage.ScaleType = Enum.ScaleType.Slice
LoadingImage.SliceCenter = Rect.new(Vector2.new(100,100),Vector2.new(100,100))
LoadingImage.SliceScale = 0.12
warn("Loading screen loaded!")
GUI.Enabled = true
TweenService:Create(MainFrame, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(LoadingText, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(LoadingImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
ScrollFrame.Size = UDim2.new(0,200,0,200)
ScrollFrame.Position = UDim2.new(0.045,0,0.171,0)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.CanvasSize = UDim2.new(0,0,2.5,0)
ScrollFrame.ScrollBarImageTransparency = 1
ScrollFrame.Parent = MainFrame
local GreetingLabel = Instance.new("TextLabel")
GreetingLabel.TextTransparency = 1
GreetingLabel.BackgroundTransparency = 1
GreetingLabel.Size = UDim2.new(0,200,0,34)
GreetingLabel.Position = UDim2.new(0.045,0,0.039,0)
GreetingLabel.Font = Enum.Font.SourceSans
GreetingLabel.Text = "Hello!"
GreetingLabel.TextColor3 = Color3.new(1,1,1)
GreetingLabel.TextScaled = 1
GreetingLabel.Parent = MainFrame
local SelfDestructButton = Instance.new("TextButton")
SelfDestructButton.Text = "Self-Destruct Script"
SelfDestructButton.Font = Enum.Font.SourceSans
SelfDestructButton.TextColor3 = Color3.new(1,1,1)
SelfDestructButton.TextScaled = true
SelfDestructButton.TextTransparency = 1
SelfDestructButton.BackgroundTransparency = 1
SelfDestructButton.ZIndex = 2
SelfDestructButton.Position = UDim2.new(0.073,0,0.023,0)
SelfDestructButton.Size = UDim2.new(0,170,0,50)
SelfDestructButton.Active = false
local SelfDestructButtonImage = Instance.new("ImageLabel")
SelfDestructButtonImage.Parent = SelfDestructButton
SelfDestructButtonImage.BackgroundTransparency = 1
SelfDestructButtonImage.Position = UDim2.new(0.5,0,0.5,0)
SelfDestructButtonImage.AnchorPoint = Vector2.new(0.5,0.5)
SelfDestructButtonImage.ImageTransparency = 1
SelfDestructButtonImage.Image = "rbxassetid://3570695787"
SelfDestructButtonImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
SelfDestructButtonImage.ScaleType = Enum.ScaleType.Slice
SelfDestructButtonImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
SelfDestructButtonImage.SliceScale = 0.12
SelfDestructButtonImage.Size = UDim2.new(1,0,1,0)
SelfDestructButton.Parent = ScrollFrame
SelfDestructButton.MouseEnter:Connect(function()
	SelfDestructButtonImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
SelfDestructButton.MouseLeave:Connect(function()
	SelfDestructButtonImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
local TestTPButton = Instance.new("TextButton")
TestTPButton.BackgroundTransparency = 1
TestTPButton.Position = UDim2.new(0.068,0,0.115,0)
TestTPButton.Size = UDim2.new(0,170,0,50)
TestTPButton.ZIndex = 2
TestTPButton.Font = Enum.Font.SourceSans
TestTPButton.Text = "Teleport to map"
TestTPButton.TextColor3 = Color3.new(1,1,1)
TestTPButton.TextScaled = true
TestTPButton.TextTransparency = 1
TestTPButton.Active = false
local TestTPButtonImage = Instance.new("ImageLabel")
TestTPButtonImage.AnchorPoint = Vector2.new(0.5,0.5)
TestTPButtonImage.BackgroundColor3 = Color3.new(1,1,1)
TestTPButtonImage.BackgroundTransparency = 1
TestTPButtonImage.Position = UDim2.new(0.5,0,0.5,0)
TestTPButtonImage.Size = UDim2.new(1,0,1,0)
TestTPButtonImage.Image = "rbxassetid://3570695787"
TestTPButtonImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
TestTPButtonImage.ScaleType = Enum.ScaleType.Slice
TestTPButtonImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
TestTPButtonImage.SliceScale = 0.12
TestTPButtonImage.ImageTransparency = 1
TestTPButtonImage.Parent = TestTPButton
TestTPButton.Parent = ScrollFrame
TestTPButton.MouseEnter:Connect(function()
	TestTPButtonImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
TestTPButton.MouseLeave:Connect(function()
	TestTPButtonImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
TestTPButton.MouseButton1Click:Connect(function()
	--Gonna add all maps here. Stay tuned!
	if game.Workspace:FindFirstChild("Bank") ~= nil then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2706.18872, 21.2988377, 2041.45801, 0.00864851475, -0, -0.999962747, 0, 1, -0, 0.999962747, 0, 0.00864851475)
		game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-2706.18872, 21.2988377, 2041.45801))
	else
		if game.Workspace:FindFirstChild("BioLab") ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2600.49292, 48.3959503, -1146.03711, 0.998344004, 7.31515755e-08, 0.057521347, -6.90099426e-08, 1, -7.39881543e-08, -0.057521347, 6.98960889e-08, 0.998344004)
			game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(2600.49292, 48.3959503, -1146.03711)) --I use MoveTo to fool the server into teleporting us to our desired location. It's effectively a FE bypass.
		end
	end
end)

local GoToSpawn = Instance.new("TextButton")
GoToSpawn.BackgroundTransparency = 1
GoToSpawn.Position = UDim2.new(0.064,0,0.205,0)
GoToSpawn.Size = UDim2.new(0,170,0,50)
GoToSpawn.ZIndex = 2
GoToSpawn.Font = Enum.Font.SourceSans
GoToSpawn.Text = "Teleport to spawn"
GoToSpawn.TextColor3 = Color3.new(1,1,1)
GoToSpawn.TextScaled = true
GoToSpawn.TextTransparency = 1
GoToSpawn.Active = false
local GoToSpawnImage = Instance.new("ImageLabel")
GoToSpawnImage.AnchorPoint = Vector2.new(0.5,0.5)
GoToSpawnImage.BackgroundColor3 = Color3.new(1,1,1)
GoToSpawnImage.BackgroundTransparency = 1
GoToSpawnImage.Position = UDim2.new(0.5,0,0.5,0)
GoToSpawnImage.Size = UDim2.new(1,0,1,0)
GoToSpawnImage.Image = "rbxassetid://3570695787"
GoToSpawnImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
GoToSpawnImage.ScaleType = Enum.ScaleType.Slice
GoToSpawnImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
GoToSpawnImage.SliceScale = 0.12
GoToSpawnImage.ImageTransparency = 1
GoToSpawnImage.Parent = GoToSpawn
GoToSpawn.Parent = ScrollFrame
GoToSpawn.MouseEnter:Connect(function()
	GoToSpawnImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
GoToSpawn.MouseLeave:Connect(function()
	GoToSpawnImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
GoToSpawn.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110.100014, 127.497978, 29.2999897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-110.100014, 127.497978, 29.2999897))
end)

local NoClipped = Instance.new("BoolValue")
NoClipped.Value = false
local NoClip = Instance.new("TextButton")
NoClip.BackgroundTransparency = 1
NoClip.Position = UDim2.new(0.064,0,0.297,0)
NoClip.Size = UDim2.new(0,170,0,50)
NoClip.ZIndex = 2
NoClip.Font = Enum.Font.SourceSans
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.new(1,1,1)
NoClip.TextScaled = true
NoClip.TextTransparency = 1
NoClip.Active = false
local NoClipImage = Instance.new("ImageLabel")
NoClipImage.AnchorPoint = Vector2.new(0.5,0.5)
NoClipImage.BackgroundColor3 = Color3.new(1,1,1)
NoClipImage.BackgroundTransparency = 1
NoClipImage.Position = UDim2.new(0.5,0,0.5,0)
NoClipImage.Size = UDim2.new(1,0,1,0)
NoClipImage.Image = "rbxassetid://3570695787"
NoClipImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
NoClipImage.ScaleType = Enum.ScaleType.Slice
NoClipImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
NoClipImage.SliceScale = 0.12
NoClipImage.ImageTransparency = 1
NoClipImage.Parent = NoClip
NoClip.Parent = ScrollFrame
NoClip.MouseEnter:Connect(function()
	NoClipImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
NoClip.MouseLeave:Connect(function()
	NoClipImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
NoClip.MouseButton1Click:Connect(function()
	if NoClipped.Value then
		NoClipped.Value = false
		event:Disconnect()
	else
		NoClipped.Value = true
		local hum = game.Players.LocalPlayer.Character.Humanoid
		local torso = hum.Parent:FindFirstChild("HumanoidRootPart")
		local origY = torso.Position.Y
		event = game:service("RunService").RenderStepped:connect(function()
			torso.CFrame = CFrame.new(torso.CFrame.X,origY,torso.CFrame.Z)
			hum:ChangeState(11)
		end)
	end
end)

local ChangeSpeed = Instance.new("TextButton")
ChangeSpeed.BackgroundTransparency = 1
ChangeSpeed.Position = UDim2.new(0.064,0,0.394,0)
ChangeSpeed.Size = UDim2.new(0,103,0,50)
ChangeSpeed.ZIndex = 2
ChangeSpeed.Font = Enum.Font.SourceSans
ChangeSpeed.Text = "Change Speed (Normal is 16)"
ChangeSpeed.TextColor3 = Color3.new(1,1,1)
ChangeSpeed.TextScaled = true
ChangeSpeed.TextTransparency = 1
ChangeSpeed.Active = false
local ChangeSpeedTextBox = Instance.new("TextBox")
ChangeSpeedTextBox.BackgroundTransparency = 1
ChangeSpeedTextBox.TextTransparency = 1
ChangeSpeedTextBox.Text = ""
ChangeSpeedTextBox.Position = UDim2.new(0.605,0,0.496,0)
ChangeSpeedTextBox.Size = UDim2.new(0,61,0,50)
ChangeSpeedTextBox.ZIndex = 2
ChangeSpeedTextBox.TextScaled = true
ChangeSpeedTextBox.TextColor3 = Color3.new(1,1,1)
ChangeSpeedTextBox.Font = Enum.Font.SourceSans
ChangeSpeedTextBox.Parent = ScrollFrame
local ChangeSpeedImage = Instance.new("ImageLabel")
ChangeSpeedImage.AnchorPoint = Vector2.new(0.5,0.5)
ChangeSpeedImage.BackgroundColor3 = Color3.new(1,1,1)
ChangeSpeedImage.BackgroundTransparency = 1
ChangeSpeedImage.Position = UDim2.new(0.5,0,0.5,0)
ChangeSpeedImage.Size = UDim2.new(1,0,1,0)
ChangeSpeedImage.Image = "rbxassetid://3570695787"
ChangeSpeedImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
ChangeSpeedImage.ScaleType = Enum.ScaleType.Slice
ChangeSpeedImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
ChangeSpeedImage.SliceScale = 0.12
ChangeSpeedImage.ImageTransparency = 1
ChangeSpeedImage.Parent = ChangeSpeed
local ChangeSpeedTextBoxImage = Instance.new("ImageLabel")
ChangeSpeedTextBoxImage.AnchorPoint = Vector2.new(0.5,0.5)
ChangeSpeedTextBoxImage.BackgroundColor3 = Color3.new(1,1,1)
ChangeSpeedTextBoxImage.BackgroundTransparency = 1
ChangeSpeedTextBoxImage.Position = UDim2.new(0.5,0,0.5,0)
ChangeSpeedTextBoxImage.Size = UDim2.new(1,0,1,0)
ChangeSpeedTextBoxImage.Image = "rbxassetid://3570695787"
ChangeSpeedTextBoxImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
ChangeSpeedTextBoxImage.ScaleType = Enum.ScaleType.Slice
ChangeSpeedTextBoxImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
ChangeSpeedTextBoxImage.SliceScale = 0.12
ChangeSpeedTextBoxImage.ImageTransparency = 1
ChangeSpeedTextBoxImage.Parent = ChangeSpeedTextBox
ChangeSpeed.Parent = ScrollFrame
ChangeSpeed.MouseEnter:Connect(function()
	ChangeSpeedImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
ChangeSpeed.MouseLeave:Connect(function()
	ChangeSpeedImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
ChangeSpeed.MouseButton1Click:Connect(function()
	local succ,err = pcall(function()
		speed = tonumber(ChangeSpeedTextBox.Text)
	end)
	if not succ then
		wait()
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end
end)

local ESP = Instance.new("TextButton")
ESP.BackgroundTransparency = 1
ESP.Position = UDim2.new(0.064,0,0.488,0)
ESP.Size = UDim2.new(0,170,0,50)
ESP.ZIndex = 2
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(1,1,1)
ESP.TextScaled = true
ESP.TextTransparency = 1
ESP.Active = false
local ESPImage = Instance.new("ImageLabel")
ESPImage.AnchorPoint = Vector2.new(0.5,0.5)
ESPImage.BackgroundColor3 = Color3.new(1,1,1)
ESPImage.BackgroundTransparency = 1
ESPImage.Position = UDim2.new(0.5,0,0.5,0)
ESPImage.Size = UDim2.new(1,0,1,0)
ESPImage.Image = "rbxassetid://3570695787"
ESPImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
ESPImage.ScaleType = Enum.ScaleType.Slice
ESPImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
ESPImage.SliceScale = 0.12
ESPImage.ImageTransparency = 1
ESPImage.Parent = ESP
ESP.Parent = ScrollFrame
ESP.MouseEnter:Connect(function()
	ESPImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
ESP.MouseLeave:Connect(function()
	ESPImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
local ESPON = false
ESP.MouseButton1Click:Connect(function()
	if not ESPON then
		ESPON = true
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Knife") ~= nil or v.Character:FindFirstChild("Knife") ~= nil then
				local MurdGUI = Instance.new("BillboardGui")
				MurdGUI.Size = UDim2.new(8,0,2,0)
				MurdGUI.StudsOffset = Vector3.new(0,3,0)
				MurdGUI.Name = "MurdGUI"
				MurdGUI.AlwaysOnTop = true
				local MurdGUITextLabel = Instance.new("TextLabel")
				MurdGUITextLabel.Text = "Murderer"
				MurdGUITextLabel.BackgroundTransparency = 1
				MurdGUITextLabel.Size = UDim2.new(1,0,1,0)
				MurdGUITextLabel.ZIndex = 2
				MurdGUITextLabel.Font = Enum.Font.SourceSans
				MurdGUITextLabel.TextScaled = true
				MurdGUITextLabel.TextColor3 = Color3.new(1,1,1)
				local MurdGUITextLabelImage = Instance.new("ImageLabel")
				MurdGUITextLabelImage.Image = "rbxassetid://3570695787"
				MurdGUITextLabelImage.AnchorPoint = Vector2.new(0.5,0.5)
				MurdGUITextLabelImage.BackgroundTransparency = 1
				MurdGUITextLabelImage.Position = UDim2.new(0.5,0,0.5,0)
				MurdGUITextLabelImage.Size = UDim2.new(1,0,1,0)
				MurdGUITextLabelImage.ZIndex = 1
				MurdGUITextLabelImage.ImageColor3 = Color3.new(255,0,0)
				MurdGUITextLabelImage.ScaleType = Enum.ScaleType.Slice
				MurdGUITextLabelImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
				MurdGUITextLabelImage.SliceScale = 0.12
				MurdGUITextLabelImage.Parent = MurdGUITextLabel
				MurdGUITextLabel.Parent = MurdGUI
				MurdGUI.Parent = v.Character.Head
			else
				if v.Backpack:FindFirstChild("Gun") ~= nil or v.Character:FindFirstChild("Gun") ~= nil then
					local MurdGUI = Instance.new("BillboardGui")
					MurdGUI.Size = UDim2.new(8,0,2,0)
					MurdGUI.StudsOffset = Vector3.new(0,3,0)
					MurdGUI.Name = "MurdGUI"
					MurdGUI.AlwaysOnTop = true
					local MurdGUITextLabel = Instance.new("TextLabel")
					MurdGUITextLabel.Text = "Sheriff"
					MurdGUITextLabel.BackgroundTransparency = 1
					MurdGUITextLabel.Size = UDim2.new(1,0,1,0)
					MurdGUITextLabel.ZIndex = 2
					MurdGUITextLabel.Font = Enum.Font.SourceSans
					MurdGUITextLabel.TextScaled = true
					MurdGUITextLabel.TextColor3 = Color3.new(1,1,1)
					local MurdGUITextLabelImage = Instance.new("ImageLabel")
					MurdGUITextLabelImage.Image = "rbxassetid://3570695787"
					MurdGUITextLabelImage.AnchorPoint = Vector2.new(0.5,0.5)
					MurdGUITextLabelImage.BackgroundTransparency = 1
					MurdGUITextLabelImage.Position = UDim2.new(0.5,0,0.5,0)
					MurdGUITextLabelImage.Size = UDim2.new(1,0,1,0)
					MurdGUITextLabelImage.ZIndex = 1
					MurdGUITextLabelImage.ImageColor3 = Color3.new(0,0,255)
					MurdGUITextLabelImage.ScaleType = Enum.ScaleType.Slice
					MurdGUITextLabelImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
					MurdGUITextLabelImage.SliceScale = 0.12
					MurdGUITextLabelImage.Parent = MurdGUITextLabel
					MurdGUITextLabel.Parent = MurdGUI
					MurdGUI.Parent = v.Character.Head
				else
					local MurdGUI = Instance.new("BillboardGui")
					MurdGUI.Size = UDim2.new(8,0,2,0)
					MurdGUI.StudsOffset = Vector3.new(0,3,0)
					MurdGUI.Name = "MurdGUI"
					MurdGUI.AlwaysOnTop = true
					local MurdGUITextLabel = Instance.new("TextLabel")
					MurdGUITextLabel.Text = "Innocent"
					MurdGUITextLabel.BackgroundTransparency = 1
					MurdGUITextLabel.Size = UDim2.new(1,0,1,0)
					MurdGUITextLabel.ZIndex = 2
					MurdGUITextLabel.Font = Enum.Font.SourceSans
					MurdGUITextLabel.TextScaled = true
					MurdGUITextLabel.TextColor3 = Color3.new(1,1,1)
					local MurdGUITextLabelImage = Instance.new("ImageLabel")
					MurdGUITextLabelImage.Image = "rbxassetid://3570695787"
					MurdGUITextLabelImage.AnchorPoint = Vector2.new(0.5,0.5)
					MurdGUITextLabelImage.BackgroundTransparency = 1
					MurdGUITextLabelImage.Position = UDim2.new(0.5,0,0.5,0)
					MurdGUITextLabelImage.Size = UDim2.new(1,0,1,0)
					MurdGUITextLabelImage.ZIndex = 1
					MurdGUITextLabelImage.ImageColor3 = Color3.new(0,255,0)
					MurdGUITextLabelImage.ScaleType = Enum.ScaleType.Slice
					MurdGUITextLabelImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
					MurdGUITextLabelImage.SliceScale = 0.12
					MurdGUITextLabelImage.Parent = MurdGUITextLabel
					MurdGUITextLabel.Parent = MurdGUI
					MurdGUI.Parent = v.Character.Head
				end
			end
		end
	else
		for i,v in pairs(game.Players:GetPlayers()) do
			ESPON = false
			if v.Character.Head:FindFirstChild("MurdGUI") ~= nil then
				v.Character.Head:FindFirstChild("MurdGUI"):Destroy()
			end
		end
	end
end)

local TPToGun = Instance.new("TextButton")
TPToGun.BackgroundTransparency = 1
TPToGun.Position = UDim2.new(0.064,0,0.581,0)
TPToGun.Size = UDim2.new(0,170,0,50)
TPToGun.ZIndex = 2
TPToGun.Font = Enum.Font.SourceSans
TPToGun.Text = "Teleport to Gun"
TPToGun.TextColor3 = Color3.new(1,1,1)
TPToGun.TextScaled = true
TPToGun.TextTransparency = 1
TPToGun.Active = false
local TPToGunImage = Instance.new("ImageLabel")
TPToGunImage.AnchorPoint = Vector2.new(0.5,0.5)
TPToGunImage.BackgroundColor3 = Color3.new(1,1,1)
TPToGunImage.BackgroundTransparency = 1
TPToGunImage.Position = UDim2.new(0.5,0,0.5,0)
TPToGunImage.Size = UDim2.new(1,0,1,0)
TPToGunImage.Image = "rbxassetid://3570695787"
TPToGunImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
TPToGunImage.ScaleType = Enum.ScaleType.Slice
TPToGunImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
TPToGunImage.SliceScale = 0.12
TPToGunImage.ImageTransparency = 1
TPToGunImage.Parent = TPToGun
TPToGun.Parent = ScrollFrame
TPToGun.MouseEnter:Connect(function()
	TPToGunImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
TPToGun.MouseLeave:Connect(function()
	TPToGunImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
TPToGun.MouseButton1Click:Connect(function()
	if game.Workspace:FindFirstChild("GunDrop") ~= nil then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GunDrop.CFrame
		game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Workspace.GunDrop.Position)
	end
end)
local XRayed = Instance.new("BoolValue")
XRayed.Value = false
local XRay = Instance.new("TextButton")
XRay.BackgroundTransparency = 1
XRay.Position = UDim2.new(0.064,0,0.689,0)
XRay.Size = UDim2.new(0,170,0,50)
XRay.ZIndex = 2
XRay.Font = Enum.Font.SourceSans
XRay.Text = "X-Ray"
XRay.TextColor3 = Color3.new(1,1,1)
XRay.TextScaled = true
XRay.TextTransparency = 1
XRay.Active = false
local XRayImage = Instance.new("ImageLabel")
XRayImage.AnchorPoint = Vector2.new(0.5,0.5)
XRayImage.BackgroundColor3 = Color3.new(1,1,1)
XRayImage.BackgroundTransparency = 1
XRayImage.Position = UDim2.new(0.5,0,0.5,0)
XRayImage.Size = UDim2.new(1,0,1,0)
XRayImage.Image = "rbxassetid://3570695787"
XRayImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
XRayImage.ScaleType = Enum.ScaleType.Slice
XRayImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
XRayImage.SliceScale = 0.12
XRayImage.ImageTransparency = 1
XRayImage.Parent = XRay
XRay.Parent = ScrollFrame
XRay.MouseEnter:Connect(function()
	XRayImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
XRay.MouseLeave:Connect(function()
	XRayImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
XRay.MouseButton1Click:Connect(function()
	if XRayed.Value then
		XRayed.Value = false
		for i,v in pairs(TransTable) do
			v[1].Transparency = v[2]
		end
	else
		XRayed.Value = true
		TransTable = {}
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("WedgePart") or v:IsA("UnionOperation") then
				table.insert(TransTable, #TransTable+1, {v, v.Transparency})
				v.Transparency = 0.9
			end
		end
	end
end)

local GodMode = Instance.new("TextButton")
GodMode.BackgroundTransparency = 1
GodMode.Position = UDim2.new(0.064,0,0.784,0)
GodMode.Size = UDim2.new(0,170,0,50)
GodMode.ZIndex = 2
GodMode.Font = Enum.Font.SourceSans
GodMode.Text = "God Mode (DO NOT RESET WITH THIS ON!)"
GodMode.TextColor3 = Color3.new(1,1,1)
GodMode.TextScaled = true
GodMode.TextTransparency = 1
GodMode.Active = false
local GodModeImage = Instance.new("ImageLabel")
GodModeImage.AnchorPoint = Vector2.new(0.5,0.5)
GodModeImage.BackgroundColor3 = Color3.new(1,1,1)
GodModeImage.BackgroundTransparency = 1
GodModeImage.Position = UDim2.new(0.5,0,0.5,0)
GodModeImage.Size = UDim2.new(1,0,1,0)
GodModeImage.Image = "rbxassetid://3570695787"
GodModeImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
GodModeImage.ScaleType = Enum.ScaleType.Slice
GodModeImage.SliceCenter = Rect.new(Vector2.new(100,100), Vector2.new(100,100))
GodModeImage.SliceScale = 0.12
GodModeImage.ImageTransparency = 1
GodModeImage.Parent = GodMode
GodMode.Parent = ScrollFrame
GodMode.MouseEnter:Connect(function()
	GodModeImage.ImageColor3 = Color3.new(0.152941, 0.152941, 0.152941)
end)
GodMode.MouseLeave:Connect(function()
	GodModeImage.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
end)
GodMode.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	if player.Character then
		if player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.Name = "1"
		end
		local l = player.Character["1"]:Clone()
		l.Parent = player.Character
		l.Name = "Humanoid"; wait(0.1)
		player.Character["1"]:Destroy()
		workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
		player.Character.Animate.Disabled = true; wait(0.1)
		player.Character.Animate.Disabled = false
	end
end)

SelfDestructButton.MouseButton1Click:Connect(function()
	SelfDestructButton.Active = false
	TweenService:Create(SelfDestructButton, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(SelfDestructButtonImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(GreetingLabel, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(TestTPButton, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(TestTPButtonImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(GoToSpawn, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(GoToSpawnImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(ScrollFrame, TweenInfo.new(1), {ScrollBarImageTransparency = 1}):Play()
	TweenService:Create(NoClip, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(NoClipImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(ChangeSpeed, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(ChangeSpeedTextBox, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(ChangeSpeedImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(ChangeSpeedTextBoxImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(ESP, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(ESPImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(TPToGun, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(TPToGunImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(XRay, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(XRayImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	TweenService:Create(GodMode, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(GodModeImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	wait(1)
	ScrollFrame:Destroy()
	TweenService:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.new(0,0,0,258)}):Play()
	wait(1)
	safeshutdown = true
	if ESPON then
		for i,v in pairs(game.Players:GetPlayers()) do
			ESPON = false
			if v.Character.Head:FindFirstChild("MurdGUI") ~= nil then
				v.Character.Head:FindFirstChild("MurdGUI"):Destroy()
			end
		end
	end
	GUI:Destroy()
	script:Destroy()
end)

wait(1)
warn("Script Loaded!")
TweenService:Create(LoadingImage, TweenInfo.new(1), {Size = UDim2.new(0,300,0,5), Position = UDim2.new(0.5,0,0.676,0)}):Play()
wait(1)
TweenService:Create(LoadingText, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(LoadingImage, TweenInfo.new(1), {ImageTransparency = 1}):Play()
wait(1)
LoadingText:Destroy()
LoadingImage:Destroy()
TweenService:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.new(0,221,0,205)}):Play()
wait(1)
TweenService:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.new(0,221,0,258)}):Play()
wait(1)
TweenService:Create(GreetingLabel, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(SelfDestructButton, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(SelfDestructButtonImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(TestTPButton, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(TestTPButtonImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(GoToSpawn, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(GoToSpawnImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(ScrollFrame, TweenInfo.new(1), {ScrollBarImageTransparency = 0}):Play()
TweenService:Create(NoClip, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(NoClipImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(ChangeSpeed, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(ChangeSpeedTextBox, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(ChangeSpeedImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(ChangeSpeedTextBoxImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(ESP, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(ESPImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(TPToGun, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(TPToGunImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(XRay, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(XRayImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
TweenService:Create(GodMode, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(GodModeImage, TweenInfo.new(1), {ImageTransparency = 0}):Play()
SelfDestructButton.Active = true
wait(1)
game.Workspace.ChildAdded:Connect(function(inst)
	if inst.Name == "GunDrop" then
		warn("Gun Dropper")
		local yoy = Instance.new("Hint")
		yoy.Parent = GUI
		yoy.Text = "GUN DROPPED!"
		wait(5)
		yoy:Destroy()
	end
end)
