local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("TextLabel")
local d = Instance.new("Frame")
local e = Instance.new("Frame")
local f = Instance.new("TextButton")
local g = Instance.new("Frame")
local h = Instance.new("TextButton")
local i = Instance.new("Frame")
local j = Instance.new("TextButton")
local k = Instance.new("Frame")
local l = Instance.new("TextButton")
local m = Instance.new("Frame")
local n = Instance.new("Frame")
local o = Instance.new("TextButton")
local p = Instance.new("Frame")
local q = Instance.new("TextBox")
local r = Instance.new("Frame")
local s = Instance.new("TextBox")
local t = Instance.new("TextButton")
local u = Instance.new("Frame")
local v = Instance.new("TextButton")
local w = Instance.new("Frame")
local x = Instance.new("Frame")
local y = Instance.new("TextButton")
local z = Instance.new("Frame")
local A = Instance.new("TextLabel")
local B = Instance.new("TextButton")
local C = Instance.new("Frame")
local D = Instance.new("TextButton")
local E = Instance.new("Frame")
local F = Instance.new("TextButton")
local G = Instance.new("Frame")
local H = Instance.new("TextButton")
local I = Instance.new("TextButton")
local J = Instance.new("TextButton")
local K = Instance.new("TextButton")
local L = Instance.new("TextLabel")
a.Name = "Floppaware"
a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
a.ResetOnSpawn = false
b.Name = "Gui"
b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
b.BorderColor3 = Color3.fromRGB(64, 66, 61)
b.BorderSizePixel = 2
b.Position = UDim2.new(0.802590966, 0, 0.505300343, 0)
b.Size = UDim2.new(0, 300, 0, 344)
c.Name = "floppaware"
c.Parent = b
c.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
c.BackgroundTransparency = 1.000
c.BorderSizePixel = 0
c.Size = UDim2.new(0, 300, 0, 20)
c.Font = Enum.Font.Code
c.Text = "Floppaware"
c.TextColor3 = Color3.fromRGB(225, 225, 225)
c.TextSize = 15.000
c.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
c.TextStrokeTransparency = 0.000
d.Parent = b
d.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
d.BorderSizePixel = 0
d.Position = UDim2.new(0.0333333351, 0, 0.0630000308, 0)
d.Size = UDim2.new(0, 280, 0, 312)
e.Name = "Frame2"
e.Parent = d
e.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
e.BorderSizePixel = 0
e.Position = UDim2.new(0.0357142873, 0, 0.470928878, 0)
e.Size = UDim2.new(0, 123, 0, 153)
f.Name = "Rejoin"
f.Parent = e
f.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
f.BorderSizePixel = 0
f.Position = UDim2.new(0.0894308984, 0, 0.786669135, 0)
f.Size = UDim2.new(0, 100, 0, 25)
f.Font = Enum.Font.Code
f.Text = "Rejoin"
f.TextColor3 = Color3.fromRGB(255, 255, 255)
f.TextSize = 14.000
f.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
f.TextStrokeTransparency = 0.000
f.MouseButton1Down:connect(
    function()
        local M = game:GetService("TeleportService")
        local N = game:GetService("Players").LocalPlayer
        M:Teleport(game.PlaceId, N)
    end
)
g.Name = "Rejoin"
g.Parent = f
g.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
g.BorderSizePixel = 0
g.Position = UDim2.new(-0.00430908194, 0, 0, 0)
g.Size = UDim2.new(0, 3, 0, 25)
h.Name = "Serverhop"
h.Parent = e
h.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
h.BorderSizePixel = 0
h.Position = UDim2.new(0.0894308984, 0, 0.56022346, 0)
h.Size = UDim2.new(0, 100, 0, 25)
h.Font = Enum.Font.Code
h.Text = "Serverhop"
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.TextSize = 14.000
h.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
h.TextStrokeTransparency = 0.000
h.MouseButton1Down:connect(
    function()
        repeat
            wait()
        until game:IsLoaded() and game.Players.LocalPlayer
        local M, N = game:GetService "HttpService", game:GetService "TeleportService"
        local O =
            M:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
        function joinNew()
            if not isfile("servers.sss") then
                writefile("servers.sss", M:JSONEncode({}))
            end
            local P = readfile("servers.sss")
            P = M:JSONDecode(P)
            for Q, R in next, O["data"] do
                if R ~= game.JobId then
                    local S = true
                    for T, U in pairs(P) do
                        if U == R.id then
                            S = false
                        end
                    end
                    if S then
                        table.insert(P, R["id"])
                        writefile("servers.sss", M:JSONEncode(P))
                        wait()
                        return R["id"]
                    end
                end
            end
        end
        local V = joinNew()
        if not V then
            writefile("servers.sss", M:JSONEncode({}))
            local V = joinNew()
            N:TeleportToPlaceInstance(game.PlaceId, V)
        else
            N:TeleportToPlaceInstance(game.PlaceId, V)
        end
    end
)
i.Name = "Serverhop"
i.Parent = h
i.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
i.BorderSizePixel = 0
i.Position = UDim2.new(-0.00430908194, 0, 0, 0)
i.Size = UDim2.new(0, 3, 0, 25)
j.Name = "Noclip"
j.Parent = e
j.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
j.BorderSizePixel = 0
j.Position = UDim2.new(0.0894308984, 0, 0.323381394, 0)
j.Size = UDim2.new(0, 100, 0, 25)
j.Font = Enum.Font.Code
j.Text = "Noclip"
j.TextColor3 = Color3.fromRGB(255, 255, 255)
j.TextSize = 14.000
j.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
j.TextStrokeTransparency = 0.000
j.MouseButton1Click:Connect(
    function()
        noclip = false
        game:GetService("RunService").Stepped:connect(
            function()
                if noclip then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
        )
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(
            function(M)
                if M == "g" then
                    noclip = not noclip
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
        )
    end
)
k.Name = "Noclip"
k.Parent = j
k.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
k.BorderSizePixel = 0
k.Position = UDim2.new(-0.00430908194, 0, 0, 0)
k.Size = UDim2.new(0, 3, 0, 25)
l.Name = "Noseats"
l.Parent = e
l.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
l.BorderSizePixel = 0
l.Position = UDim2.new(0.0894308984, 0, 0.0957506895, 0)
l.Size = UDim2.new(0, 100, 0, 25)
l.Font = Enum.Font.Code
l.Text = "Noseats"
l.TextColor3 = Color3.fromRGB(255, 255, 255)
l.TextSize = 14.000
l.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
l.TextStrokeTransparency = 0.000
l.MouseButton1Click:Connect(
    function()
        workspace.DescendantAdded:Connect(
            function(M)
                if M:IsA("Seat") then
                    wait()
                    M:Destroy()
                end
            end
        )
        for N, O in pairs(workspace:GetDescendants()) do
            if O:IsA("Seat") then
                O:Destroy()
            end
        end
    end
)
m.Name = "Noseats"
m.Parent = l
m.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
m.BorderSizePixel = 0
m.Position = UDim2.new(-0.00430908194, 0, 0, 0)
m.Size = UDim2.new(0, 3, 0, 25)
n.Name = "Frame3"
n.Parent = d
n.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
n.BorderSizePixel = 0
n.Position = UDim2.new(0.524999976, 0, 0.705950797, 0)
n.Size = UDim2.new(0, 123, 0, 81)
o.Name = "Fov"
o.Parent = n
o.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
o.BorderSizePixel = 0
o.Position = UDim2.new(0.100000001, 0, 0.587000012, 0)
o.Size = UDim2.new(0, 100, 0, 25)
o.Font = Enum.Font.Code
o.Text = "Change fov"
o.TextColor3 = Color3.fromRGB(255, 255, 255)
o.TextSize = 14.000
o.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
o.TextStrokeTransparency = 0.000
o.MouseButton1Click:Connect(
    function()
        local W = q.Text
        game:GetService("Workspace").Camera.FieldOfView = W
    end
)
p.Name = "Fov"
p.Parent = o
p.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
p.BorderSizePixel = 0
p.Position = UDim2.new(-0.000568847638, 0, 0.0284716804, 0)
p.Size = UDim2.new(0, 3, 0, 23)
q.Parent = n
q.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
q.BorderSizePixel = 0
q.Position = UDim2.new(0.104801826, 0, 0.153846264, 0)
q.Size = UDim2.new(0, 98, 0, 24)
q.Font = Enum.Font.Code
q.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
q.PlaceholderText = "70"
q.Text = ""
q.TextColor3 = Color3.fromRGB(255, 255, 255)
q.TextSize = 14.000
q.TextTransparency = 0.690
r.Name = "Frame1"
r.Parent = d
r.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
r.BorderSizePixel = 0
r.Position = UDim2.new(0.0357142873, 0, 0.0989999995, 0)
r.Size = UDim2.new(0, 124, 0, 108)
s.Parent = r
s.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
s.BorderSizePixel = 0
s.Position = UDim2.new(0.089430891, 0, 0.0833811462, 0)
s.Size = UDim2.new(0, 100, 0, 25)
s.Font = Enum.Font.Code
s.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
s.PlaceholderText = "Id"
s.Text = ""
s.TextColor3 = Color3.fromRGB(255, 255, 255)
s.TextSize = 14.000
s.TextTransparency = 0.690
t.Name = "Massplay"
t.Parent = r
t.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
t.BorderSizePixel = 0
t.Position = UDim2.new(0.0974954069, 0, 0.379355371, 0)
t.Size = UDim2.new(0, 100, 0, 25)
t.Font = Enum.Font.Code
t.Text = "Massplay"
t.TextColor3 = Color3.fromRGB(255, 255, 255)
t.TextSize = 14.000
t.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
t.TextStrokeTransparency = 0.000
u.Name = "Massplay"
u.Parent = t
u.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
u.BorderSizePixel = 0
u.Position = UDim2.new(-0.00430908194, 0, 0, 0)
u.Size = UDim2.new(0, 3, 0, 25)
v.Name = "Dupe"
v.Parent = r
v.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
v.BorderSizePixel = 0
v.Position = UDim2.new(0.0974954069, 0, 0.677503467, 0)
v.Size = UDim2.new(0, 100, 0, 25)
v.Font = Enum.Font.Code
v.Text = "Dupe"
v.TextColor3 = Color3.fromRGB(255, 255, 255)
v.TextSize = 14.000
v.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
v.TextStrokeTransparency = 0.000
w.Name = "Dupe"
w.Parent = v
w.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
w.BorderSizePixel = 0
w.Position = UDim2.new(-0.00430908194, 0, 0, 0)
w.Size = UDim2.new(0, 3, 0, 25)
x.Name = "Frame4"
x.Parent = d
x.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
x.BorderSizePixel = 0
x.Position = UDim2.new(0.521428525, 0, 0.0989999995, 0)
x.Size = UDim2.new(0, 124, 0, 181)
y.Name = "Bloom"
y.Parent = x
y.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
y.BorderSizePixel = 0
y.Position = UDim2.new(0.115323067, 0, 0.22193563, 0)
y.Size = UDim2.new(0, 95, 0, 23)
y.Font = Enum.Font.Code
y.Text = "Bloom"
y.TextColor3 = Color3.fromRGB(255, 255, 255)
y.TextSize = 14.000
y.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
y.TextStrokeTransparency = 0.000
y.MouseButton1Down:connect(
    function()
        local M = game.Lighting
        local N = Instance.new("Sky")
        local O = Instance.new("BloomEffect")
        local P = Instance.new("BlurEffect")
        N.Parent = M
        N.MoonTextureId = "rbxasset://sky/moon.jpg"
        N.SkyboxBk = "http://www.roblox.com/asset?id=153258865"
        N.SkyboxDn = "http://www.roblox.com/asset?id=153259937"
        N.SkyboxFt = "http://www.roblox.com/asset?id=153258844"
        N.SkyboxLf = "http://www.roblox.com/asset?id=153258851"
        N.SkyboxRt = "http://www.roblox.com/asset?id=153258851"
        N.SkyboxUp = "http://www.roblox.com/asset?id=153259943"
        N.StarCount = 3000
        N.SunAngularSize = 21
        N.SunTextureId = "rbxasset://sky/sun.jpg"
        O.Parent = M
        O.Intensity = 1
        O.Size = 24
        O.Threshold = 0.5
        O.Enabled = true
        P.Parent = M
        P.Enabled = true
        P.Size = 1.5
    end
)
z.Name = "Bloom"
z.Parent = y
z.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
z.BorderSizePixel = 0
z.Position = UDim2.new(-0.00430972455, 0, 0, 0)
z.Size = UDim2.new(0, 3, 0, 23)
A.Name = "Graphics"
A.Parent = x
A.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
A.BorderSizePixel = 0
A.Size = UDim2.new(0, 123, 0, 32)
A.Font = Enum.Font.Code
A.Text = "Graphics"
A.TextColor3 = Color3.fromRGB(217, 217, 217)
A.TextSize = 15.000
A.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
A.TextStrokeTransparency = 0.000
B.Name = "Sunset"
B.Parent = x
B.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.114864223, 0, 0.412661046, 0)
B.Size = UDim2.new(0, 96, 0, 23)
B.Font = Enum.Font.Code
B.Text = "Sunset"
B.TextColor3 = Color3.fromRGB(255, 255, 255)
B.TextSize = 14.000
B.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
B.TextStrokeTransparency = 0.000
B.MouseButton1Down:connect(
    function()
        local M = game.Lighting
        M.Ambient = Color3.fromRGB(33, 33, 33)
        M.Brightness = 7.5
        M.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        M.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        M.EnvironmentDiffuseScale = 0.105
        M.EnvironmentSpecularScale = 0.522
        M.GlobalShadows = true
        M.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
        M.ShadowSoftness = 0.04
        M.GeographicLatitude = -15.525
        M.ExposureCompensation = 0.75
        local N = Instance.new("BloomEffect", M)
        N.Enabled = true
        N.Intensity = 0.04
        N.Size = 1900
        N.Threshold = 0.915
        local O = Instance.new("ColorCorrectionEffect", M)
        O.Brightness = 0.176
        O.Contrast = 0.39
        O.Enabled = true
        O.Saturation = 0.2
        O.TintColor = Color3.fromRGB(255, 202, 255)
        local P = Instance.new("DepthOfFieldEffect", M)
        P.Enabled = true
        P.FarIntensity = 0.077
        P.FocusDistance = 21.54
        P.InFocusRadius = 20.77
        P.NearIntensity = 0.277
        local Q = Instance.new("ColorCorrectionEffect", M)
        Q.Brightness = 0
        Q.Contrast = -0.07
        Q.Saturation = 0
        Q.Enabled = true
        Q.TintColor = Color3.fromRGB(255, 247, 239)
        local R = Instance.new("ColorCorrectionEffect", M)
        R.Brightness = 0.2
        R.Contrast = 0.45
        R.Saturation = -0.1
        R.Enabled = true
        R.TintColor = Color3.fromRGB(255, 255, 255)
        local S = Instance.new("SunRaysEffect", M)
        S.Enabled = true
        S.Intensity = 0.01
        S.Spread = 0.146
    end
)
C.Name = "Sunset"
C.Parent = B
C.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
C.BorderSizePixel = 0
C.Position = UDim2.new(-0.00430933619, 0, 0, 0)
C.Size = UDim2.new(0, 3, 0, 23)
D.Name = "soon1"
D.Parent = x
D.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
D.BorderSizePixel = 0
D.Position = UDim2.new(0.115322977, 0, 0.594981492, 0)
D.Size = UDim2.new(0, 95, 0, 25)
D.Font = Enum.Font.Code
D.Text = "Soon..."
D.TextColor3 = Color3.fromRGB(255, 255, 255)
D.TextSize = 14.000
D.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
D.TextStrokeTransparency = 0.000
E.Name = "soon1"
E.Parent = D
E.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
E.BorderSizePixel = 0
E.Position = UDim2.new(-0.00435300218, 0, 0, 0)
E.Size = UDim2.new(0, 3, 0, 25)
F.Name = "soon2"
F.Parent = x
F.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
F.BorderSizePixel = 0
F.Position = UDim2.new(0.115322977, 0, 0.788351655, 0)
F.Size = UDim2.new(0, 95, 0, 25)
F.Font = Enum.Font.Code
F.Text = "Soon..."
F.TextColor3 = Color3.fromRGB(255, 255, 255)
F.TextSize = 14.000
F.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
F.TextStrokeTransparency = 0.000
G.Name = "soon2"
G.Parent = F
G.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
G.BorderSizePixel = 0
G.Position = UDim2.new(-0.00435341289, 0, 0, 0)
G.Size = UDim2.new(0, 3, 0, 25)
H.Name = "Main"
H.Parent = b
H.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
H.BorderSizePixel = 0
H.Position = UDim2.new(0.0333333015, 0, 0.0610465109, 0)
H.Selectable = false
H.Size = UDim2.new(0, 70, 0, 20)
H.Font = Enum.Font.Code
H.Text = "Main"
H.TextColor3 = Color3.fromRGB(170, 170, 170)
H.TextSize = 14.000
H.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
H.TextStrokeTransparency = 0.000
H.TextWrapped = true
I.Name = "Esp"
I.Parent = b
I.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
I.BorderSizePixel = 0
I.Position = UDim2.new(0.266666651, 0, 0.0610465109, 0)
I.Selectable = false
I.Size = UDim2.new(0, 70, 0, 20)
I.Font = Enum.Font.Code
I.Text = "Esp"
I.TextColor3 = Color3.fromRGB(170, 170, 170)
I.TextSize = 14.000
I.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
I.TextStrokeTransparency = 0.000
I.TextWrapped = true
J.Parent = b
J.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
J.BorderSizePixel = 0
J.Position = UDim2.new(0.5, 0, 0.0610465109, 0)
J.Selectable = false
J.Size = UDim2.new(0, 70, 0, 20)
J.Font = Enum.Font.Code
J.TextColor3 = Color3.fromRGB(170, 170, 170)
J.TextSize = 14.000
J.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
J.TextStrokeTransparency = 0.000
J.TextWrapped = true
K.Name = "Misc"
K.Parent = b
K.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
K.BorderSizePixel = 0
K.Position = UDim2.new(0.733333349, 0, 0.0610465109, 0)
K.Selectable = false
K.Size = UDim2.new(0, 70, 0, 20)
K.Font = Enum.Font.Code
K.Text = "Misc"
K.TextColor3 = Color3.fromRGB(170, 170, 170)
K.TextSize = 14.000
K.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
K.TextStrokeTransparency = 0.000
K.TextWrapped = true
L.Name = "Insert"
L.Parent = b
L.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L.BackgroundTransparency = 1.000
L.Position = UDim2.new(0.666666687, 0, 0, 0)
L.Size = UDim2.new(0, 100, 0, 21)
L.Font = Enum.Font.Code
L.Text = "Insert"
L.TextColor3 = Color3.fromRGB(191, 191, 191)
L.TextSize = 15.000
L.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
local function X()
    local Y = Instance.new("LocalScript", c)
    Y.Parent.Text = ""
    wait(2)
    Y.Parent.Text = "F"
    wait(0.1)
    Y.Parent.Text = "Fl"
    wait(0.1)
    Y.Parent.Text = "Flo"
    wait(0.1)
    Y.Parent.Text = "Flop"
    wait(0.1)
    Y.Parent.Text = "Flopp"
    wait(0.1)
    Y.Parent.Text = "Floppa"
    wait(0.1)
    Y.Parent.Text = "Floppaw"
    wait(0.1)
    Y.Parent.Text = "Floppawa"
    wait(0.1)
    Y.Parent.Text = "Floppawar"
    wait(0.1)
    Y.Parent.Text = "Floppaware"
    wait(0.1)
    Y.Parent.Text = "Floppaware "
    wait(0.1)
    Y.Parent.Text = "Floppaware b"
    wait(0.1)
    Y.Parent.Text = "Floppaware by"
    wait(0.1)
    Y.Parent.Text = "Floppaware by "
    wait(0.1)
    Y.Parent.Text = "Floppaware by c"
    wait(0.1)
    Y.Parent.Text = "Floppaware by ch"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chr"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chro"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrom"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#6"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#66"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#666"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#6660"
    wait(3)
    Y.Parent.Text = "Floppaware by chrome#666"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#66"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#6"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome#"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrome"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chrom"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chro"
    wait(0.1)
    Y.Parent.Text = "Floppaware by chr"
    wait(0.1)
    Y.Parent.Text = "Floppaware by ch"
    wait(0.1)
    Y.Parent.Text = "Floppaware by c"
    wait(0.1)
    Y.Parent.Text = "Floppaware by "
    wait(0.1)
    Y.Parent.Text = "Floppaware by"
    wait(0.1)
    Y.Parent.Text = "Floppaware b"
    wait(0.1)
    Y.Parent.Text = "Floppaware "
    wait(0.1)
    Y.Parent.Text = "Floppaware"
end
coroutine.wrap(X)()
local function Z()
    local Y = Instance.new("LocalScript", g)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(Z)()
local function _()
    local Y = Instance.new("LocalScript", i)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(_)()
local function a0()
    local Y = Instance.new("LocalScript", k)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(a0)()
local function a1()
    local Y = Instance.new("LocalScript", m)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(a1)()
local function a2()
    local Y = Instance.new("LocalScript", p)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(a2)()
local function a3()
    local Y = Instance.new("LocalScript", u)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(a3)()
function SCRIPT_LVAP81_FAKESCRIPT()
    local Y = Instance.new("LocalScript")
    Y.Parent = t
    Y.Parent.MouseButton1Click:Connect(
        function()
            local a4 = Y.Parent.Parent.TextBox.Text
            for a5, a6 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if string.find(string.lower(a6.Name), "boomb") then
                    a6.Parent = game.Players.LocalPlayer.Character
                end
            end
            wait()
            for U, a7 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if a7:IsA("Tool") then
                    a7.Remote:FireServer("PlaySong", a4)
                    a7.Handle.Sound.Playing = false
                end
            end
            wait()
            local a8 = game.Players.LocalPlayer.Name
            for a5, a7 in pairs(game.workspace[a8]:GetDescendants()) do
                if a7:IsA "Sound" then
                    if a7.IsPlaying then
                        if
                            a7.Name ~= "Jumping" or a7.Name ~= "FreeFalling" or a7.Name ~= "Died" or
                                a7.Name ~= "Landing" or
                                a7.Name ~= "Splash" or
                                a7.Name ~= "Running" or
                                a7.Name ~= "Swimming" or
                                a7.Name ~= "Climbing"
                         then
                            a7.TimePosition = 0
                        end
                    end
                end
            end
        end
    )
end
coroutine.resume(coroutine.create(SCRIPT_LVAP81_FAKESCRIPT))
local function a9()
    local Y = Instance.new("LocalScript", w)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(a9)()
local function aa()
    local Y = Instance.new("LocalScript", z)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(aa)()
local function ab()
    local Y = Instance.new("LocalScript", C)
    Y.Parent.Parent.MouseButton1Click:Connect(
        function()
            Y.Parent.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
            wait(.1)
            Y.Parent.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        end
    )
end
coroutine.wrap(ab)()
local function ac()
    local Y = Instance.new("LocalScript", b)
    local ad = game:GetService("UserInputService")
    local ae = Y.Parent
    local af
    local ag
    local ah
    local ai
    local function aj(ak)
        local al = ak.Position - ah
        ae.Position = UDim2.new(ai.X.Scale, ai.X.Offset + al.X, ai.Y.Scale, ai.Y.Offset + al.Y)
    end
    ae.InputBegan:Connect(
        function(ak)
            if ak.UserInputType == Enum.UserInputType.MouseButton1 or ak.UserInputType == Enum.UserInputType.Touch then
                af = true
                ah = ak.Position
                ai = ae.Position
                ak.Changed:Connect(
                    function()
                        if ak.UserInputState == Enum.UserInputState.End then
                            af = false
                        end
                    end
                )
            end
        end
    )
    ae.InputChanged:Connect(
        function(ak)
            if ak.UserInputType == Enum.UserInputType.MouseMovement or ak.UserInputType == Enum.UserInputType.Touch then
                ag = ak
            end
        end
    )
    ad.InputChanged:Connect(
        function(ak)
            if ak == ag and af then
                aj(ak)
            end
        end
    )
end
coroutine.wrap(ac)()
local function am()
    local Y = Instance.new("LocalScript", L)
    Y.Parent.TextTransparency = 1
    wait(9)
    Y.Parent.TextTransparency = 0.95
    wait(.1)
    Y.Parent.TextTransparency = 0.9
    wait(.1)
    Y.Parent.TextTransparency = 0.85
    wait(.1)
    Y.Parent.TextTransparency = 0.8
    wait(.1)
    Y.Parent.TextTransparency = 0.75
    wait(.1)
    Y.Parent.TextTransparency = 0.7
    wait(.1)
    Y.Parent.TextTransparency = 0.65
    wait(.1)
    Y.Parent.TextTransparency = 0.6
    wait(.1)
    Y.Parent.TextTransparency = 0.55
    wait(.1)
    Y.Parent.TextTransparency = 0.5
    wait(.1)
    Y.Parent.TextTransparency = 0.45
    wait(.1)
    Y.Parent.TextTransparency = 0.4
    wait(.1)
    Y.Parent.TextTransparency = 0.35
    wait(.1)
    Y.Parent.TextTransparency = 0.3
    wait(.1)
    Y.Parent.TextTransparency = 0.25
    wait(.1)
    Y.Parent.TextTransparency = 0.2
    wait(.1)
    Y.Parent.TextTransparency = 0.15
    wait(.1)
    Y.Parent.TextTransparency = 0.1
    wait(.1)
    Y.Parent.TextTransparency = 0.05
    wait(.1)
    Y.Parent.TextTransparency = 0
    wait(1)
    Y.Parent.TextTransparency = 0.05
    wait(.1)
    Y.Parent.TextTransparency = 0.10
    wait(.1)
    Y.Parent.TextTransparency = 0.15
    wait(.1)
    Y.Parent.TextTransparency = 0.20
    wait(.1)
    Y.Parent.TextTransparency = 0.25
    wait(.1)
    Y.Parent.TextTransparency = 0.30
    wait(.1)
    Y.Parent.TextTransparency = 0.35
    wait(.1)
    Y.Parent.TextTransparency = 0.40
    wait(.1)
    Y.Parent.TextTransparency = 0.45
    wait(.1)
    Y.Parent.TextTransparency = 0.50
    wait(.1)
    Y.Parent.TextTransparency = 0.55
    wait(.1)
    Y.Parent.TextTransparency = 0.60
    wait(.1)
    Y.Parent.TextTransparency = 0.65
    wait(.1)
    Y.Parent.TextTransparency = 0.70
    wait(.1)
    Y.Parent.TextTransparency = 0.75
    wait(.1)
    Y.Parent.TextTransparency = 0.80
    wait(.1)
    Y.Parent.TextTransparency = 0.85
    wait(.1)
    Y.Parent.TextTransparency = 0.90
    wait(.1)
    Y.Parent.TextTransparency = 0.95
    wait(.1)
    Y.Parent.TextTransparency = 1
end
coroutine.wrap(am)()
local function an()
    local Y = Instance.new("LocalScript", a)
    local ao = game:GetService("Players").LocalPlayer.PlayerGui["Floppaware"]
    local ap = false
    function onKeyPress(aq, ar, as)
        if ar == Enum.UserInputState.Begin then
            if ap == false then
                ap = true
                ao.Enabled = true
            else
                ap = false
                ao.Enabled = false
            end
        end
    end
    game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.Insert)
end
coroutine.wrap(an)()
