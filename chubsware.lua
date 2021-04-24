local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("TextLabel")
local d = Instance.new("Frame")
local e = Instance.new("Frame")
local f = Instance.new("TextButton")
local g = Instance.new("TextButton")
local h = Instance.new("TextButton")
local i = Instance.new("TextButton")
local j = Instance.new("TextLabel")
local k = Instance.new("TextButton")
local l = Instance.new("TextButton")
local m = Instance.new("TextButton")
local n = Instance.new("TextButton")
local o = Instance.new("Frame")
local p = Instance.new("TextButton")
local q = Instance.new("TextBox")
local r = Instance.new("Frame")
local s = Instance.new("TextBox")
local t = Instance.new("TextButton")
local u = Instance.new("TextButton")
local v = Instance.new("TextLabel")
local w = Instance.new("Frame")
local x = Instance.new("TextButton")
local y = Instance.new("TextLabel")
local z = Instance.new("TextButton")
local A = Instance.new("TextButton")
local B = Instance.new("TextButton")
local C = Instance.new("TextButton")
local E = Instance.new("TextButton")
local F = Instance.new("TextLabel")
local G = Instance.new("ScreenGui")
local H = Instance.new("Frame")
local I = Instance.new("TextLabel")
local J = Instance.new("TextLabel")
local K = Instance.new("TextLabel")
G.Name = "WatermarkTab"
G.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
G.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G.ResetOnSpawn = false
a.Name = "Floppaware"
a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
a.ResetOnSpawn = false
b.Name = "Gui"
b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
b.BorderColor3 = Color3.fromRGB(144, 110, 255)
b.Position = UDim2.new(0.802590966, 0, 0.439340413, 0)
b.Size = UDim2.new(0, 300, 0, 400)
H.Name = "WatermarkFrame"
H.Parent = G
H.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
H.BorderColor3 = Color3.fromRGB(144, 110, 255)
H.Position = UDim2.new(0.864281297, 0, 0.0129564106, 0)
H.Size = UDim2.new(0, 200, 0, 20)
H.Visible = false
c.Name = "chubsware"
c.Parent = b
c.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
c.BackgroundTransparency = 1.000
c.BorderSizePixel = 0
c.Size = UDim2.new(0, 300, 0, 20)
c.Font = Enum.Font.Code
c.Text = ""
c.TextColor3 = Color3.fromRGB(225, 225, 225)
c.TextSize = 15.000
c.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
c.TextStrokeTransparency = 0.000
d.Parent = b
d.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
d.BorderSizePixel = 0
d.Position = UDim2.new(0.0333333351, 0, 0.0524999984, 0)
d.Size = UDim2.new(0, 280, 0, 370)
e.Name = "Frame2"
e.Parent = d
e.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
e.BorderSizePixel = 0
e.Position = UDim2.new(0.524999976, 0, 0.0276857112, 0)
e.Size = UDim2.new(0, 123, 0, 280)
f.Name = "Rejoin"
f.Parent = e
f.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
f.BorderSizePixel = 0
f.Position = UDim2.new(0.0859275758, 0, 0.414487362, 0)
f.Size = UDim2.new(0, 100, 0, 23)
f.Font = Enum.Font.Code
f.Text = "Rejoin"
f.TextColor3 = Color3.fromRGB(255, 255, 255)
f.TextSize = 14.000
f.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
f.TextStrokeTransparency = 0.000
f.MouseButton1Down:connect(
    function()
        local L = game:GetService("TeleportService")
        local M = game:GetService("Players").LocalPlayer
        L:Teleport(game.PlaceId, M)
    end
)
g.Name = "Serverhop"
g.Parent = e
g.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
g.BorderSizePixel = 0
g.Position = UDim2.new(0.08130081, 0, 0.298572659, 0)
g.Size = UDim2.new(0, 100, 0, 23)
g.Font = Enum.Font.Code
g.Text = "Serverhop"
g.TextColor3 = Color3.fromRGB(255, 255, 255)
g.TextSize = 14.000
g.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
g.TextStrokeTransparency = 0.000
g.MouseButton1Down:connect(
    function()
        repeat
            wait()
        until game:IsLoaded() and game.Players.LocalPlayer
        local L, M = game:GetService "HttpService", game:GetService "TeleportService"
        local O =
            L:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
        function joinNew()
            if not isfile("servers.sss") then
                writefile("servers.sss", L:JSONEncode({}))
            end
            local P = readfile("servers.sss")
            P = L:JSONDecode(P)
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
                        writefile("servers.sss", L:JSONEncode(P))
                        wait()
                        return R["id"]
                    end
                end
            end
        end
        local V = joinNew()
        if not V then
            writefile("servers.sss", L:JSONEncode({}))
            local V = joinNew()
            M:TeleportToPlaceInstance(game.PlaceId, V)
        else
            M:TeleportToPlaceInstance(game.PlaceId, V)
        end
    end
)
h.Name = "Noclip"
h.Parent = e
h.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
h.BorderSizePixel = 0
h.Position = UDim2.new(0.0859275758, 0, 0.174330905, 0)
h.Size = UDim2.new(0, 100, 0, 23)
h.Font = Enum.Font.Code
h.Text = "Noclip"
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.TextSize = 14.000
h.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
h.TextStrokeTransparency = 0.000
h.MouseButton1Click:Connect(
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
            function(L)
                if L == "g" then
                    noclip = not noclip
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
        )
    end
)
i.Name = "Noseats"
i.Parent = e
i.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
i.BorderSizePixel = 0
i.Position = UDim2.new(0.08130081, 0, 0.055531092, 0)
i.Size = UDim2.new(0, 100, 0, 23)
i.Font = Enum.Font.Code
i.Text = "Noseats"
i.TextColor3 = Color3.fromRGB(255, 255, 255)
i.TextSize = 14.000
i.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
i.TextStrokeTransparency = 0.000
i.MouseButton1Click:Connect(
    function()
        workspace.DescendantAdded:Connect(
            function(L)
                if L:IsA("Seat") then
                    wait()
                    L:Destroy()
                end
            end
        )
        for M, O in pairs(workspace:GetDescendants()) do
            if O:IsA("Seat") then
                O:Destroy()
            end
        end
    end
)
j.Name = "Misc"
j.Parent = e
j.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
j.BorderSizePixel = 0
j.Size = UDim2.new(0, 35, 0, 15)
j.Font = Enum.Font.Code
j.Text = "Misc"
j.TextColor3 = Color3.fromRGB(217, 217, 217)
j.TextSize = 13.000
j.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
j.TextStrokeTransparency = 0.000
k.Name = "Healthbar"
k.Parent = e
k.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
k.BorderSizePixel = 0
k.Position = UDim2.new(0.0859275758, 0, 0.650373399, 0)
k.Size = UDim2.new(0, 100, 0, 23)
k.Font = Enum.Font.Code
k.Text = "Healthbar"
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.TextSize = 14.000
k.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
k.TextStrokeTransparency = 0.000
k.MouseButton1Click:Connect(
    function()
    game:service'RunService'.RenderStepped:Connect(function()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.HP.Size = UDim2.new(0.09, 10, 0, 10)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.HP.Bar.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.HP.Position = UDim2.new(0.35, 0, 0.91, 0)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Stam.Size = UDim2.new(0.09, 10, 0, 10)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Stam.Bar.BackgroundColor3 = Color3.fromRGB(150, 255, 150)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Stam.Position = UDim2.new(0.555, 0, 0.91, 0)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.KO.Size = UDim2.new(0.09, 10, 0, 10)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.KO.Bar.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.KO.Position = UDim2.new(0.4525, 0, 0.91, 0)
        end)
    end
)
l.Name = "Freecam"
l.Parent = e
l.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
l.BorderSizePixel = 0
l.Position = UDim2.new(0.08130081, 0, 0.531573296, 0)
l.Size = UDim2.new(0, 100, 0, 23)
l.Font = Enum.Font.Code
l.Text = "Freecam [P]"
l.TextColor3 = Color3.fromRGB(255, 255, 255)
l.TextSize = 14.000
l.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
l.TextStrokeTransparency = 0.000
l.MouseButton1Click:Connect(
    function()
        loadstring(game:HttpGet "https://pastebin.com/raw/a69TiZDm")()
    end
)
m.Name = "Watermark"
m.Parent = e
m.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
m.BorderSizePixel = 0
m.Position = UDim2.new(0.0859275758, 0, 0.890529752, 0)
m.Size = UDim2.new(0, 100, 0, 23)
m.Font = Enum.Font.Code
m.Text = "Watermark"
m.TextColor3 = Color3.fromRGB(255, 255, 255)
m.TextSize = 14.000
m.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
m.TextStrokeTransparency = 0.000
m.MouseButton1Click:Connect(
    function()
        if H.Visible == true then
            H.Visible = false
        else
            H.Visible = true
        end
    end
)
n.Name = "Removehud"
n.Parent = e
n.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
n.BorderSizePixel = 0
n.Position = UDim2.new(0.08130081, 0, 0.771024644, 0)
n.Size = UDim2.new(0, 100, 0, 23)
n.Font = Enum.Font.Code
n.Text = "RemoveHUD"
n.TextColor3 = Color3.fromRGB(255, 255, 255)
n.TextSize = 14.000
n.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
n.TextStrokeTransparency = 0.000
n.MouseButton1Click:Connect(
    function()
    game:service'RunService'.RenderStepped:Connect(function()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.ImageButton:Destroy()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Cash:Destroy()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Mute:Destroy()
            game:GetService("CoreGui").TopBar.TopBarFrame.LeftFrame.ChatIcon.BadgeContainer:Destroy()
            game:GetService("CoreGui").TopBar.TopBarFrame.RightFrame:Destroy()
    end)
end)
o.Name = "Frame3"
o.Parent = d
o.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
o.BorderSizePixel = 0
o.Position = UDim2.new(0.524999976, 0, 0.808143735, 0)
o.Size = UDim2.new(0, 123, 0, 62)
p.Name = "Fov"
p.Parent = o
p.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
p.BorderSizePixel = 0
p.Position = UDim2.new(0.102187738, 0, 0.568965793, 0)
p.Size = UDim2.new(0, 97, 0, 20)
p.Font = Enum.Font.Code
p.Text = "Change fov"
p.TextColor3 = Color3.fromRGB(255, 255, 255)
p.TextSize = 14.000
p.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
p.TextStrokeTransparency = 0.000
p.MouseButton1Click:Connect(
    function()
        local W = q.Text
        game:GetService("Workspace").Camera.FieldOfView = W
    end
)
q.Parent = o
q.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
q.BorderSizePixel = 0
q.Position = UDim2.new(0.104801826, 0, 0.119363718, 0)
q.Size = UDim2.new(0, 98, 0, 20)
q.Font = Enum.Font.Code
q.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
q.PlaceholderText = "70"
q.Text = ""
q.TextColor3 = Color3.fromRGB(255, 255, 255)
q.TextSize = 14.000
q.TextTransparency = 0.690
r.Name = "Frame1"
r.Parent = d
r.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
r.BorderSizePixel = 0
r.Position = UDim2.new(0.0357142873, 0, 0.0287297424, 0)
r.Size = UDim2.new(0, 125, 0, 115)
s.Parent = r
s.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
s.BorderSizePixel = 0
s.Position = UDim2.new(0.105430663, 0, 0.131847113, 0)
s.Size = UDim2.new(0, 101, 0, 26)
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
t.Position = UDim2.new(0.0974951088, 0, 0.415029258, 0)
t.Size = UDim2.new(0, 100, 0, 26)
t.Font = Enum.Font.Code
t.Text = "Play"
t.TextColor3 = Color3.fromRGB(255, 255, 255)
t.TextSize = 14.000
t.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
t.TextStrokeTransparency = 0.000
u.Name = "Dupe"
u.Parent = r
u.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
u.BorderSizePixel = 0
u.Position = UDim2.new(0.0974951163, 0, 0.711813211, 0)
u.Size = UDim2.new(0, 100, 0, 24)
u.Font = Enum.Font.Code
u.Text = "Dupe"
u.TextColor3 = Color3.fromRGB(255, 255, 255)
u.TextSize = 14.000
u.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
u.TextStrokeTransparency = 0.000
u.MouseButton1Click:Connect(
    function()
        loadstring(game:HttpGet "https://pastebin.com/raw/TdfWUhZg")()
    end
)
v.Name = "Massplaytext"
v.Parent = r
v.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
v.BorderSizePixel = 0
v.Size = UDim2.new(0, 60, 0, 15)
v.Font = Enum.Font.Code
v.Text = "Massplay"
v.TextColor3 = Color3.fromRGB(217, 217, 217)
v.TextSize = 13.000
v.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
v.TextStrokeTransparency = 0.000
w.Name = "Frame4"
w.Parent = d
w.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
w.BorderSizePixel = 0
w.Position = UDim2.new(0.0392857157, 0, 0.368362188, 0)
w.Size = UDim2.new(0, 124, 0, 224)
x.Name = "Bloom"
x.Parent = w
x.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
x.BorderSizePixel = 0
x.Position = UDim2.new(0.107258461, 0, 0.0979276374, 0)
x.Size = UDim2.new(0, 95, 0, 22)
x.Font = Enum.Font.Code
x.Text = "Dark"
x.TextColor3 = Color3.fromRGB(255, 255, 255)
x.TextSize = 14.000
x.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
x.TextStrokeTransparency = 0.000
x.MouseButton1Down:connect(
    function()
        local L = game.Lighting
        local M = Instance.new("Sky")
        local O = Instance.new("BloomEffect")
        local P = Instance.new("BlurEffect")
        local Q = Instance.new("ColorCorrectionEffect")
        M.Parent = L
        M.MoonTextureId = "rbxasset://sky/moon.jpg"
        M.SkyboxBk = "http://www.roblox.com/asset?id=150283828"
        M.SkyboxDn = "http://www.roblox.com/asset?id=150283728"
        M.SkyboxFt = "http://www.roblox.com/asset?id=150283781"
        M.SkyboxLf = "http://www.roblox.com/asset?id=150283702"
        M.SkyboxRt = "http://www.roblox.com/asset?id=150283748"
        M.SkyboxUp = "http://www.roblox.com/asset?id=150283877"
        M.StarCount = 2256
        M.SunAngularSize = 21
        M.SunTextureId = "rbxasset://sky/sun.jpg"
        O.Parent = L
        O.Intensity = 1
        O.Size = 24
        O.Threshold = 0.5
        O.Enabled = true
        P.Parent = L
        P.Enabled = true
        P.Size = 1.5
        Q.Parent = L
        Q.Brightness = 0.08
        Q.Contrast = 0.39
        Q.Enabled = true
        Q.Saturation = -0.35
        Q.TintColor = Color3.fromRGB(154, 154, 154)
    end
)
y.Name = "Graphics"
y.Parent = w
y.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
y.BorderSizePixel = 0
y.Size = UDim2.new(0, 60, 0, 15)
y.Font = Enum.Font.Code
y.Text = "Graphics"
y.TextColor3 = Color3.fromRGB(217, 217, 217)
y.TextSize = 13.000
y.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
y.TextStrokeTransparency = 0.000
z.Name = "Sunset"
z.Parent = w
z.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
z.BorderSizePixel = 0
z.Position = UDim2.new(0.107258461, 0, 0.247025356, 0)
z.Size = UDim2.new(0, 94, 0, 22)
z.Font = Enum.Font.Code
z.Text = "Neptune"
z.TextColor3 = Color3.fromRGB(255, 255, 255)
z.TextSize = 14.000
z.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
z.TextStrokeTransparency = 0.000
z.MouseButton1Down:connect(
    function()
        local L = game.Lighting
        local M = Instance.new("Sky")
        local O = Instance.new("BloomEffect")
        local P = Instance.new("BlurEffect")
        local Q = Instance.new("ColorCorrectionEffect")
        M.Parent = L
        M.MoonTextureId = "rbxasset://sky/moon.jpg"
        M.SkyboxBk = "http://www.roblox.com/asset?id=218955819"
        M.SkyboxDn = "http://www.roblox.com/asset?id=218953419"
        M.SkyboxFt = "http://www.roblox.com/asset?id=218954524"
        M.SkyboxLf = "http://www.roblox.com/asset?id=218958493"
        M.SkyboxRt = "http://www.roblox.com/asset?id=218957134"
        M.SkyboxUp = "http://www.roblox.com/asset?id=218950090"
        M.StarCount = 2256
        M.SunAngularSize = 21
        M.SunTextureId = "rbxasset://sky/sun.jpg"
        O.Parent = L
        O.Intensity = 1
        O.Size = 24
        O.Threshold = 0.5
        O.Enabled = true
        P.Parent = L
        P.Enabled = true
        P.Size = 1.5
        Q.Parent = L
        Q.Brightness = 0.08
        Q.Contrast = 0.39
        Q.Enabled = true
        Q.Saturation = -0.35
        Q.TintColor = Color3.fromRGB(154, 154, 154)
    end
)
A.Name = "Sunset"
A.Parent = w
A.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
A.BorderSizePixel = 0
A.Position = UDim2.new(0.107258461, 0, 0.546132505, 0)
A.Size = UDim2.new(0, 94, 0, 22)
A.Font = Enum.Font.Code
A.Text = "Elegant"
A.TextColor3 = Color3.fromRGB(255, 255, 255)
A.TextSize = 14.000
A.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
A.TextStrokeTransparency = 0.000
A.MouseButton1Down:connect(
    function()
        local L = game.Lighting
        local M = Instance.new("Sky")
        local O = Instance.new("BloomEffect")
        local P = Instance.new("BlurEffect")
        local Q = Instance.new("ColorCorrectionEffect")
        M.Parent = L
        M.MoonTextureId = "rbxasset://sky/moon.jpg"
        M.SkyboxBk = "http://www.roblox.com/asset?id=153767241"
        M.SkyboxDn = "http://www.roblox.com/asset?id=153767216"
        M.SkyboxFt = "http://www.roblox.com/asset?id=153767266"
        M.SkyboxLf = "http://www.roblox.com/asset?id=153767200"
        M.SkyboxRt = "http://www.roblox.com/asset?id=153767231"
        M.SkyboxUp = "http://www.roblox.com/asset?id=153767288"
        M.StarCount = 2256
        M.SunAngularSize = 21
        M.SunTextureId = "rbxasset://sky/sun.jpg"
        O.Parent = L
        O.Intensity = 1
        O.Size = 24
        O.Threshold = 0.5
        O.Enabled = true
        P.Parent = L
        P.Enabled = true
        P.Size = 1.5
        Q.Parent = L
        Q.Brightness = 0.08
        Q.Contrast = 0.39
        Q.Enabled = true
        Q.Saturation = -0.35
        Q.TintColor = Color3.fromRGB(154, 154, 154)
    end
)
B.Name = "Bloom"
B.Parent = w
B.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.107258461, 0, 0.397034764, 0)
B.Size = UDim2.new(0, 95, 0, 22)
B.Font = Enum.Font.Code
B.Text = "SettingSun"
B.TextColor3 = Color3.fromRGB(255, 255, 255)
B.TextSize = 14.000
B.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
B.TextStrokeTransparency = 0.000
B.MouseButton1Down:connect(
    function()
        local L = game.Lighting
        local M = Instance.new("Sky")
        local O = Instance.new("BloomEffect")
        local P = Instance.new("BlurEffect")
        local Q = Instance.new("ColorCorrectionEffect")
        M.Parent = L
        M.MoonTextureId = "rbxasset://sky/moon.jpg"
        M.SkyboxBk = "http://www.roblox.com/asset?id=626460377"
        M.SkyboxDn = "http://www.roblox.com/asset?id=626460216"
        M.SkyboxFt = "http://www.roblox.com/asset?id=626460513"
        M.SkyboxLf = "http://www.roblox.com/asset?id=626473032"
        M.SkyboxRt = "http://www.roblox.com/asset?id=626458639"
        M.SkyboxUp = "http://www.roblox.com/asset?id=626460625"
        M.StarCount = 2256
        M.SunAngularSize = 21
        M.SunTextureId = "rbxasset://sky/sun.jpg"
        O.Parent = L
        O.Intensity = 1
        O.Size = 24
        O.Threshold = 0.5
        O.Enabled = true
        P.Parent = L
        P.Enabled = true
        P.Size = 1.5
        Q.Parent = L
        Q.Brightness = 0.08
        Q.Contrast = 0.39
        Q.Enabled = true
        Q.Saturation = -0.35
        Q.TintColor = Color3.fromRGB(154, 154, 154)
    end
)
C.Name = "Night"
C.Parent = w
C.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
C.BorderSizePixel = 0
C.Position = UDim2.new(0.107258461, 0, 0.845239639, 0)
C.Size = UDim2.new(0, 94, 0, 22)
C.Font = Enum.Font.Code
C.Text = "Night"
C.TextColor3 = Color3.fromRGB(255, 255, 255)
C.TextSize = 14.000
C.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
C.TextStrokeTransparency = 0.000
C.MouseButton1Down:connect(
    function()
        getgenv().N = true
        getgenv().D = false
        local L, M = game:GetService "Lighting", game:GetService "RunService"
        M.RenderStepped:Connect(
            function()
                if L and L.ClockTime then
                    if N == true then
                        L.ClockTime = 3
                    elseif D == true then
                        L.ClockTime = 14
                    end
                end
            end
        )
    end
)
E.Name = "Day"
E.Parent = w
E.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
E.BorderSizePixel = 0
E.Position = UDim2.new(0.107258461, 0, 0.696141899, 0)
E.Size = UDim2.new(0, 95, 0, 22)
E.Font = Enum.Font.Code
E.Text = "Day"
E.TextColor3 = Color3.fromRGB(255, 255, 255)
E.TextSize = 14.000
E.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
E.TextStrokeTransparency = 0.000
E.MouseButton1Down:connect(
    function()
        getgenv().N = false
        getgenv().D = true
        local L, M = game:GetService "Lighting", game:GetService "RunService"
        M.RenderStepped:Connect(
            function()
                if L and L.ClockTime then
                    if N == true then
                        L.ClockTime = 3
                    elseif D == true then
                        L.ClockTime = 14
                    end
                end
            end
        )
    end
)
F.Name = "Insert"
F.Parent = b
F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
F.BackgroundTransparency = 1.000
F.Position = UDim2.new(0.666666687, 0, 0, 0)
F.Size = UDim2.new(0, 100, 0, 21)
F.Font = Enum.Font.Code
F.Text = "Insert"
F.TextColor3 = Color3.fromRGB(191, 191, 191)
F.TextSize = 15.000
F.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
I.Name = "Floppaware"
I.Parent = H
I.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
I.BackgroundTransparency = 1.000
I.BorderSizePixel = 0
I.Position = UDim2.new(0.0499993898, 0, -0.0499995947, 0)
I.Size = UDim2.new(0, 120, 0, 20)
I.SizeConstraint = Enum.SizeConstraint.RelativeXX
I.Font = Enum.Font.Code
I.Text = "chubsware"
I.TextColor3 = Color3.fromRGB(200, 200, 200)
I.TextSize = 14.000
I.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
I.TextStrokeTransparency = 0.000
I.TextXAlignment = Enum.TextXAlignment.Left
J.Name = "FPS"
J.Parent = H
J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
J.BackgroundTransparency = 1.000
J.Position = UDim2.new(0.400000006, 0, 0, 0)
J.Size = UDim2.new(0, 55, 0, 20)
J.Font = Enum.Font.Code
J.Text = "60"
J.TextColor3 = Color3.fromRGB(200, 200, 200)
J.TextSize = 14.000
J.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
J.TextStrokeTransparency = 0.000
K.Name = "Time"
K.Parent = H
K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
K.BackgroundTransparency = 1.000
K.Position = UDim2.new(0.675000012, 0, 0, 0)
K.Size = UDim2.new(0, 65, 0, 20)
K.Font = Enum.Font.Code
K.Text = "10:10:10"
K.TextColor3 = Color3.fromRGB(200, 200, 200)
K.TextSize = 14.000
K.TextStrokeColor3 = Color3.fromRGB(61, 61, 61)
K.TextStrokeTransparency = 0.000
local function X()
    local Y = Instance.new("LocalScript", c)
    Y.Parent.Text = ""
    wait(1)
    Y.Parent.Text = "f"
    wait(0.1)
    Y.Parent.Text = "fl"
    wait(0.1)
    Y.Parent.Text = "flo"
    wait(0.1)
    Y.Parent.Text = "floy"
    wait(0.1)
    Y.Parent.Text = "floyd"
    wait(0.1)
    Y.Parent.Text = "floyd."
    wait(0.1)
    Y.Parent.Text = "floyd.s"
    wait(0.1)
    Y.Parent.Text = "floyd.so"
    wait(0.1)
    Y.Parent.Text = "floyd.sol"
    wait(0.1)
    Y.Parent.Text = "floyd.solu"
    wait(0.1)
    Y.Parent.Text = "floyd.solut"
    wait(0.1)
    Y.Parent.Text = "floyd.soluti"
    wait(0.1)
    Y.Parent.Text = "floyd.solutio"
    wait(0.1)
    Y.Parent.Text = "floyd.solution"
    wait(0.1)
    Y.Parent.Text = "floyd.solutions"
end
coroutine.wrap(X)()
local function Z()
    local Y = Instance.new("LocalScript", t)
    function SCRIPT_LVAP81_FAKESCRIPT()
        local Y = Instance.new("LocalScript")
        Y.Parent = t
        Y.Parent.MouseButton1Click:Connect(
            function()
                local _ = Y.Parent.Parent.TextBox.Text
                for a0, a1 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(string.lower(a1.Name), "boomb") then
                        a1.Parent = game.Players.LocalPlayer.Character
                    end
                end
                wait()
                for U, a2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if a2:IsA("Tool") then
                        a2.Remote:FireServer("PlaySong", _)
                        a2.Handle.Sound.Playing = false
                    end
                end
                wait()
                local a3 = game.Players.LocalPlayer.Name
                for a0, a2 in pairs(game.workspace[a3]:GetDescendants()) do
                    if a2:IsA "Sound" then
                        if a2.IsPlaying then
                            if
                                a2.Name ~= "Jumping" or a2.Name ~= "FreeFalling" or a2.Name ~= "Died" or
                                    a2.Name ~= "Landing" or
                                    a2.Name ~= "Splash" or
                                    a2.Name ~= "Running" or
                                    a2.Name ~= "Swimming" or
                                    a2.Name ~= "Climbing"
                             then
                                a2.TimePosition = 0
                            end
                        end
                    end
                end
            end
        )
    end
    coroutine.resume(coroutine.create(SCRIPT_LVAP81_FAKESCRIPT))
end
coroutine.wrap(Z)()
local function a4()
    local Y = Instance.new("LocalScript", b)
    local a5 = game:GetService("UserInputService")
    local a6 = Y.Parent
    local a7
    local a8
    local a9
    local aa
    local function ab(ac)
        local ad = ac.Position - a9
        a6.Position = UDim2.new(aa.X.Scale, aa.X.Offset + ad.X, aa.Y.Scale, aa.Y.Offset + ad.Y)
    end
    a6.InputBegan:Connect(
        function(ac)
            if ac.UserInputType == Enum.UserInputType.MouseButton1 or ac.UserInputType == Enum.UserInputType.Touch then
                a7 = true
                a9 = ac.Position
                aa = a6.Position
                ac.Changed:Connect(
                    function()
                        if ac.UserInputState == Enum.UserInputState.End then
                            a7 = false
                        end
                    end
                )
            end
        end
    )
    a6.InputChanged:Connect(
        function(ac)
            if ac.UserInputType == Enum.UserInputType.MouseMovement or ac.UserInputType == Enum.UserInputType.Touch then
                a8 = ac
            end
        end
    )
    a5.InputChanged:Connect(
        function(ac)
            if ac == a8 and a7 then
                ab(ac)
            end
        end
    )
end
coroutine.wrap(a4)()
local function ae()
    local Y = Instance.new("LocalScript", F)
    Y.Parent.TextTransparency = 1
    wait(4)
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
coroutine.wrap(ae)()
local function af()
    local Y = Instance.new("LocalScript", a)
    local ag = game:GetService("Players").LocalPlayer.PlayerGui["Floppaware"]
    local ah = true
    function onKeyPress(ai, aj, ak)
        if aj == Enum.UserInputState.Begin then
            if ah == false then
                ah = true
                ag.Enabled = true
            else
                ah = false
                ag.Enabled = false
            end
        end
    end
    game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.Insert)
end
coroutine.wrap(af)()
local function al()
    local Y = Instance.new("LocalScript", H)
    local a5 = game:GetService("UserInputService")
    local a6 = Y.Parent
    local a7
    local a8
    local a9
    local aa
    local function ab(ac)
        local ad = ac.Position - a9
        a6.Position = UDim2.new(aa.X.Scale, aa.X.Offset + ad.X, aa.Y.Scale, aa.Y.Offset + ad.Y)
    end
    a6.InputBegan:Connect(
        function(ac)
            if ac.UserInputType == Enum.UserInputType.MouseButton1 or ac.UserInputType == Enum.UserInputType.Touch then
                a7 = true
                a9 = ac.Position
                aa = a6.Position
                ac.Changed:Connect(
                    function()
                        if ac.UserInputState == Enum.UserInputState.End then
                            a7 = false
                        end
                    end
                )
            end
        end
    )
    a6.InputChanged:Connect(
        function(ac)
            if ac.UserInputType == Enum.UserInputType.MouseMovement or ac.UserInputType == Enum.UserInputType.Touch then
                a8 = ac
            end
        end
    )
    a5.InputChanged:Connect(
        function(ac)
            if ac == a8 and a7 then
                ab(ac)
            end
        end
    )
end
coroutine.wrap(al)()
local function am()
    local Y = Instance.new("LocalScript", H)
    while wait() do
        local an = os.date("*t")
        local K = Y.Parent:WaitForChild("Time")
        K.Text = an.hour .. ":" .. an.min .. ":" .. an.sec
    end
end
coroutine.wrap(am)()
local function ao()
    local Y = Instance.new("LocalScript", J)
    local ap = tick()
    local L = 0
    local M = game:GetService("RunService").Heartbeat
    local O, P
    local Q = {}
    local function R()
        O = tick()
        for S = #Q, 1, -1 do
            Q[S + 1] = Q[S] >= O - 1 and Q[S] or nil
        end
        Q[1] = O
        local T = tick() - P >= 1 and #Q or #Q / (tick() - P)
        T = math.floor(T)
        L = L + 1
        Y.Parent.Text = tostring(T)
    end
    P = tick()
    M:Connect(R)
end
coroutine.wrap(ao)()
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(
    function(aq)
        if aq == "c" then
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
)
