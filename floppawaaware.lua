-- Gui to Lua
-- Version: 3.2

-- Instances:

local Floppaware = Instance.new("ScreenGui")
local Gui = Instance.new("Frame")
local floppaware = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Main = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local Rejoin = Instance.new("TextButton")
local Rejoin_2 = Instance.new("Frame")
local Serverhop = Instance.new("TextButton")
local Serverhop_2 = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local Noclip_2 = Instance.new("Frame")
local Noseats = Instance.new("TextButton")
local Rejoin_3 = Instance.new("Frame")
local Frame3 = Instance.new("Frame")
local Fov = Instance.new("TextButton")
local Fov_2 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Frame1 = Instance.new("Frame")
local Frame1_2 = Instance.new("Frame")
local Bloom = Instance.new("TextButton")
local Bloom_2 = Instance.new("Frame")
local Graphics = Instance.new("TextLabel")
local Sunset = Instance.new("TextButton")
local Sunset_2 = Instance.new("Frame")
local Sunset_3 = Instance.new("TextButton")
local Rejoin_4 = Instance.new("Frame")
local Sunset_4 = Instance.new("TextButton")
local Rejoin_5 = Instance.new("Frame")
local Sunset_5 = Instance.new("TextButton")
local Rejoin_6 = Instance.new("Frame")

--Properties:

Floppaware.Name = "Floppaware"
Floppaware.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Floppaware.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Gui.Name = "Gui"
Gui.Parent = Floppaware
Gui.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Gui.BorderColor3 = Color3.fromRGB(64, 66, 61)
Gui.BorderSizePixel = 2
Gui.Position = UDim2.new(0.802590966, 0, 0.505300343, 0)
Gui.Size = UDim2.new(0, 300, 0, 400)

floppaware.Name = "floppaware"
floppaware.Parent = Gui
floppaware.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
floppaware.BackgroundTransparency = 1.000
floppaware.BorderSizePixel = 0
floppaware.Size = UDim2.new(0, 300, 0, 20)
floppaware.Font = Enum.Font.Code
floppaware.Text = "Floppaware"
floppaware.TextColor3 = Color3.fromRGB(225, 225, 225)
floppaware.TextSize = 15.000
floppaware.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
floppaware.TextStrokeTransparency = 0.000

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0333333351, 0, 0.0630000308, 0)
Frame.Size = UDim2.new(0, 280, 0, 364)

Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BorderSizePixel = 0
Main.Selectable = false
Main.Size = UDim2.new(0, 70, 0, 20)
Main.Font = Enum.Font.Code
Main.Text = "Main"
Main.TextColor3 = Color3.fromRGB(170, 170, 170)
Main.TextSize = 14.000
Main.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
Main.TextStrokeTransparency = 0.000
Main.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.25, 0, 0, 0)
TextButton.Selectable = false
TextButton.Size = UDim2.new(0, 70, 0, 20)
TextButton.Font = Enum.Font.Code
TextButton.TextColor3 = Color3.fromRGB(170, 170, 170)
TextButton.TextSize = 14.000
TextButton.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.5, 0, 0, 0)
TextButton_2.Selectable = false
TextButton_2.Size = UDim2.new(0, 70, 0, 20)
TextButton_2.Font = Enum.Font.Code
TextButton_2.TextColor3 = Color3.fromRGB(170, 170, 170)
TextButton_2.TextSize = 14.000
TextButton_2.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
TextButton_2.TextStrokeTransparency = 0.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.75, 0, 0, 0)
TextButton_3.Selectable = false
TextButton_3.Size = UDim2.new(0, 70, 0, 20)
TextButton_3.Font = Enum.Font.Code
TextButton_3.TextColor3 = Color3.fromRGB(170, 170, 170)
TextButton_3.TextSize = 14.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
TextButton_3.TextStrokeTransparency = 0.000
TextButton_3.TextWrapped = true

Frame2.Name = "Frame2"
Frame2.Parent = Frame
Frame2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.0357142873, 0, 0.554945052, 0)
Frame2.Size = UDim2.new(0, 123, 0, 152)

Rejoin.Name = "Rejoin"
Rejoin.Parent = Frame2
Rejoin.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0.10569106, 0, 0.780133188, 0)
Rejoin.Size = UDim2.new(0, 100, 0, 25)
Rejoin.Font = Enum.Font.Code
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextSize = 14.000
Rejoin.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Rejoin.TextStrokeTransparency = 0.000
Rejoin.MouseButton1Down:connect(function()
    local a=game:GetService("TeleportService")local b=game:GetService("Players").LocalPlayer;a:Teleport(game.PlaceId,b)
end)

Rejoin_2.Name = "Rejoin"
Rejoin_2.Parent = Rejoin
Rejoin_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Rejoin_2.BorderSizePixel = 0
Rejoin_2.Position = UDim2.new(-0.00430908194, 0, 0, 0)
Rejoin_2.Size = UDim2.new(0, 3, 0, 24)

Serverhop.Name = "Serverhop"
Serverhop.Parent = Frame2
Serverhop.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Serverhop.BorderSizePixel = 0
Serverhop.Position = UDim2.new(0.10569106, 0, 0.553687513, 0)
Serverhop.Size = UDim2.new(0, 100, 0, 25)
Serverhop.Font = Enum.Font.Code
Serverhop.Text = "Serverhop"
Serverhop.TextColor3 = Color3.fromRGB(255, 255, 255)
Serverhop.TextSize = 14.000
Serverhop.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Serverhop.TextStrokeTransparency = 0.000
Serverhop.MouseButton1Down:connect(function()
    repeat wait()until game:IsLoaded()and game.Players.LocalPlayer;local a,b=game:GetService"HttpService",game:GetService"TeleportService"local c=a:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))function joinNew()if not isfile('servers.sss')then writefile('servers.sss',a:JSONEncode({}))end;local d=readfile('servers.sss')d=a:JSONDecode(d)for e,f in next,c["data"]do if f~=game.JobId then local g=true;for h,i in pairs(d)do if i==f.id then g=false end end;if g then table.insert(d,f["id"])writefile("servers.sss",a:JSONEncode(d))wait()return f['id']end end end end;local j=joinNew()if not j then writefile("servers.sss",a:JSONEncode({}))local j=joinNew()b:TeleportToPlaceInstance(game.PlaceId,j)else b:TeleportToPlaceInstance(game.PlaceId,j)end
end)

Serverhop_2.Name = "Serverhop"
Serverhop_2.Parent = Serverhop
Serverhop_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Serverhop_2.BorderSizePixel = 0
Serverhop_2.Position = UDim2.new(-0.00430908194, 0, 0, 0)
Serverhop_2.Size = UDim2.new(0, 3, 0, 24)

Noclip.Name = "Noclip"
Noclip.Parent = Frame2
Noclip.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.10569106, 0, 0.316845447, 0)
Noclip.Size = UDim2.new(0, 100, 0, 25)
Noclip.Font = Enum.Font.Code
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.fromRGB(255, 255, 255)
Noclip.TextSize = 14.000
Noclip.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Noclip.TextStrokeTransparency = 0.000

Noclip_2.Name = "Noclip"
Noclip_2.Parent = Noclip
Noclip_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Noclip_2.BorderSizePixel = 0
Noclip_2.Position = UDim2.new(-0.00430908194, 0, 0, 0)
Noclip_2.Size = UDim2.new(0, 3, 0, 24)

Noseats.Name = "Noseats"
Noseats.Parent = Frame2
Noseats.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Noseats.BorderSizePixel = 0
Noseats.Position = UDim2.new(0.10569106, 0, 0.0696069002, 0)
Noseats.Size = UDim2.new(0, 100, 0, 25)
Noseats.Font = Enum.Font.Code
Noseats.Text = "Noseats"
Noseats.TextColor3 = Color3.fromRGB(255, 255, 255)
Noseats.TextSize = 14.000
Noseats.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Noseats.TextStrokeTransparency = 0.000

Rejoin_3.Name = "Rejoin"
Rejoin_3.Parent = Noseats
Rejoin_3.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Rejoin_3.BorderSizePixel = 0
Rejoin_3.Position = UDim2.new(-0.00430908194, 0, 0, 0)
Rejoin_3.Size = UDim2.new(0, 3, 0, 24)

Frame3.Name = "Frame3"
Frame3.Parent = Frame
Frame3.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0.521428585, 0, 0.753188252, 0)
Frame3.Size = UDim2.new(0, 123, 0, 78)

Fov.Name = "Fov"
Fov.Parent = Frame3
Fov.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Fov.BorderSizePixel = 0
Fov.Position = UDim2.new(0.100000001, 0, 0.587000012, 0)
Fov.Size = UDim2.new(0, 100, 0, 25)
Fov.Font = Enum.Font.Code
Fov.Text = "Change fov"
Fov.TextColor3 = Color3.fromRGB(255, 255, 255)
Fov.TextSize = 14.000
Fov.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Fov.TextStrokeTransparency = 0.000
Fov.MouseButton1Click:Connect(function()
	local InputFOV = TextBox.Text
	game:GetService("Workspace").Camera.FieldOfView = InputFOV
end)

Fov_2.Name = "Fov"
Fov_2.Parent = Fov
Fov_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Fov_2.BorderSizePixel = 0
Fov_2.Position = UDim2.new(-0.000568847638, 0, 0.0284716804, 0)
Fov_2.Size = UDim2.new(0, 3, 0, 23)

TextBox.Parent = Frame3
TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.089430891, 0, 0.15384616, 0)
TextBox.Size = UDim2.new(0, 100, 0, 24)
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
TextBox.PlaceholderText = "70"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextTransparency = 0.690

Frame1.Name = "Frame1"
Frame1.Parent = Frame
Frame1.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.0357142873, 0, 0.082417585, 0)
Frame1.Size = UDim2.new(0, 123, 0, 159)

Frame1_2.Name = "Frame1"
Frame1_2.Parent = Frame
Frame1_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame1_2.BorderSizePixel = 0
Frame1_2.Position = UDim2.new(0.521428585, 0, 0.082417585, 0)
Frame1_2.Size = UDim2.new(0, 123, 0, 231)

Bloom.Name = "Bloom"
Bloom.Parent = Frame1_2
Bloom.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Bloom.BorderSizePixel = 0
Bloom.Position = UDim2.new(0.0983906537, 0, 0.142303064, 0)
Bloom.Size = UDim2.new(0, 99, 0, 28)
Bloom.Font = Enum.Font.Code
Bloom.Text = "Bloom"
Bloom.TextColor3 = Color3.fromRGB(255, 255, 255)
Bloom.TextSize = 14.000
Bloom.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Bloom.TextStrokeTransparency = 0.000

Bloom_2.Name = "Bloom"
Bloom_2.Parent = Bloom
Bloom_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Bloom_2.BorderSizePixel = 0
Bloom_2.Position = UDim2.new(-0.00430945214, 0, 0, 0)
Bloom_2.Size = UDim2.new(0, 3, 0, 28)

Graphics.Name = "Graphics"
Graphics.Parent = Frame1_2
Graphics.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Graphics.BorderSizePixel = 0
Graphics.Size = UDim2.new(0, 123, 0, 32)
Graphics.Font = Enum.Font.Code
Graphics.Text = "Graphics"
Graphics.TextColor3 = Color3.fromRGB(217, 217, 217)
Graphics.TextSize = 15.000
Graphics.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Graphics.TextStrokeTransparency = 0.000

Sunset.Name = "Sunset"
Sunset.Parent = Frame1_2
Sunset.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Sunset.BorderSizePixel = 0
Sunset.Position = UDim2.new(0.0978696272, 0, 0.3158786, 0)
Sunset.Size = UDim2.new(0, 100, 0, 28)
Sunset.Font = Enum.Font.Code
Sunset.Text = "Sunset"
Sunset.TextColor3 = Color3.fromRGB(255, 255, 255)
Sunset.TextSize = 14.000
Sunset.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Sunset.TextStrokeTransparency = 0.000

Sunset_2.Name = "Sunset"
Sunset_2.Parent = Sunset
Sunset_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Sunset_2.BorderSizePixel = 0
Sunset_2.Position = UDim2.new(-0.00430908194, 0, 0, 0)
Sunset_2.Size = UDim2.new(0, 3, 0, 28)

Sunset_3.Name = "Sunset"
Sunset_3.Parent = Frame1_2
Sunset_3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Sunset_3.BorderSizePixel = 0
Sunset_3.Position = UDim2.new(0.0983906537, 0, 0.486418754, 0)
Sunset_3.Size = UDim2.new(0, 98, 0, 28)
Sunset_3.Font = Enum.Font.Code
Sunset_3.Text = "Soon..."
Sunset_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Sunset_3.TextSize = 14.000
Sunset_3.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Sunset_3.TextStrokeTransparency = 0.000

Rejoin_4.Name = "Rejoin"
Rejoin_4.Parent = Sunset_3
Rejoin_4.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Rejoin_4.BorderSizePixel = 0
Rejoin_4.Position = UDim2.new(-0.00435342593, 0, 0, 0)
Rejoin_4.Size = UDim2.new(0, 3, 0, 28)

Sunset_4.Name = "Sunset"
Sunset_4.Parent = Frame1_2
Sunset_4.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Sunset_4.BorderSizePixel = 0
Sunset_4.Position = UDim2.new(0.0983906537, 0, 0.660638988, 0)
Sunset_4.Size = UDim2.new(0, 99, 0, 28)
Sunset_4.Font = Enum.Font.Code
Sunset_4.Text = "Soon..."
Sunset_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Sunset_4.TextSize = 14.000
Sunset_4.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Sunset_4.TextStrokeTransparency = 0.000

Rejoin_5.Name = "Rejoin"
Rejoin_5.Parent = Sunset_4
Rejoin_5.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Rejoin_5.BorderSizePixel = 0
Rejoin_5.Position = UDim2.new(-0.00430945214, 0, 0, 0)
Rejoin_5.Size = UDim2.new(0, 3, 0, 28)

Sunset_5.Name = "Sunset"
Sunset_5.Parent = Frame1_2
Sunset_5.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Sunset_5.BorderSizePixel = 0
Sunset_5.Position = UDim2.new(0.0983906537, 0, 0.829106331, 0)
Sunset_5.Size = UDim2.new(0, 99, 0, 28)
Sunset_5.Font = Enum.Font.Code
Sunset_5.Text = "Soon..."
Sunset_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Sunset_5.TextSize = 14.000
Sunset_5.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
Sunset_5.TextStrokeTransparency = 0.000

Rejoin_6.Name = "Rejoin"
Rejoin_6.Parent = Sunset_5
Rejoin_6.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Rejoin_6.BorderSizePixel = 0
Rejoin_6.Position = UDim2.new(-0.00430945214, 0, 0, 0)
Rejoin_6.Size = UDim2.new(0, 3, 0, 28)

-- Scripts:

local function AERQGLV_fake_script() -- floppaware.LocalScript 
	local script = Instance.new('LocalScript', floppaware)

	while true do
		script.Parent.Text = "F"
		wait(0.2)
		script.Parent.Text = "Fl"
		wait(0.2)
		script.Parent.Text = "Flo"
		wait(0.2)
		script.Parent.Text = "Flop"
		wait(0.2)
		script.Parent.Text = "Flopp"
		wait(0.2)
		script.Parent.Text = "Floppa"
		wait(0.2)
		script.Parent.Text = "Floppaw"
		wait(0.2)
		script.Parent.Text = "Floppawa"
		wait(0.2)
		script.Parent.Text = "Floppawar"
		wait(0.2)
		script.Parent.Text = "Floppaware"
		wait(4.25)
		script.Parent.Text = "Floppawar"
		wait(0.2)
		script.Parent.Text = "Floppawa"
		wait(0.2)
		script.Parent.Text = "Floppaw"
		wait(0.2)
		script.Parent.Text = "Floppa"
		wait(0.2)
		script.Parent.Text = "Flopp"
		wait(0.2)
		script.Parent.Text = "Flop"
		wait(0.2)
		script.Parent.Text = "Flo"
		wait(0.2)
		script.Parent.Text = "Fl"
		wait(0.2)
		script.Parent.Text = "F"
		wait(0.2)
		script.Parent.Text = ""
		wait(0.2)
	end
end
coroutine.wrap(AERQGLV_fake_script)()

local function JKSQRXJ_fake_script() -- chromesync.Draggable 
	local script = Instance.new('LocalScript', Gui)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(JKSQRXJ_fake_script)()
