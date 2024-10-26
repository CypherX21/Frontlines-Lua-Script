--[[ 
   WARNUNG: Dieses Skript wurde nicht von ScriptBlox überprüft. Verwendung auf eigene Gefahr! 
   Skript erstellt von NeonScripting
]]

-- GUI Erstellung
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local GodModeButton = Instance.new("TextButton")
local GodModeLever = Instance.new("Frame")
local GodModeKnob = Instance.new("TextButton")
local NotificationToggle = Instance.new("TextButton")
local NotificationLever = Instance.new("Frame")
local NotificationKnob = Instance.new("TextButton")
local EspToggle = Instance.new("TextButton")
local EspLever = Instance.new("Frame")
local EspKnob = Instance.new("TextButton")
local FpsLabel = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")
local MinimizedCircle = Instance.new("TextButton")

-- Einstellungen für die GUI
ScreenGui.Name = "NeonScriptingGUI"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.Size = UDim2.new(0, 300, 0, 500)
MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
MainFrame.Active = true
MainFrame.Draggable = true

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TitleLabel.Size = UDim2.new(0, 300, 0, 50)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Text = "NeonScripting Cheat Menu"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true

GodModeButton.Name = "GodModeButton"
GodModeButton.Parent = MainFrame
GodModeButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GodModeButton.Position = UDim2.new(0, 10, 0, 70)
GodModeButton.Size = UDim2.new(0, 280, 0, 50)
GodModeButton.Text = "Toggle Godmode"
GodModeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeButton.TextScaled = true

GodModeLever.Name = "GodModeLever"
GodModeLever.Parent = MainFrame
GodModeLever.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GodModeLever.Position = UDim2.new(0, 10, 0, 130)
GodModeLever.Size = UDim2.new(0, 60, 0, 30)

GodModeKnob.Name = "GodModeKnob"
GodModeKnob.Parent = GodModeLever
GodModeKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
GodModeKnob.Size = UDim2.new(0, 30, 0, 30)
GodModeKnob.Position = UDim2.new(0, 0, 0, 0)
GodModeKnob.Text = ""

NotificationToggle.Name = "NotificationToggle"
NotificationToggle.Parent = MainFrame
NotificationToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
NotificationToggle.Position = UDim2.new(0, 10, 0, 170)
NotificationToggle.Size = UDim2.new(0, 280, 0, 50)
NotificationToggle.Text = "Toggle Notifications"
NotificationToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationToggle.TextScaled = true

NotificationLever.Name = "NotificationLever"
NotificationLever.Parent = MainFrame
NotificationLever.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
NotificationLever.Position = UDim2.new(0, 10, 0, 230)
NotificationLever.Size = UDim2.new(0, 60, 0, 30)

NotificationKnob.Name = "NotificationKnob"
NotificationKnob.Parent = NotificationLever
NotificationKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
NotificationKnob.Size = UDim2.new(0, 30, 0, 30)
NotificationKnob.Position = UDim2.new(0, 0, 0, 0)
NotificationKnob.Text = ""

EspToggle.Name = "EspToggle"
EspToggle.Parent = MainFrame
EspToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
EspToggle.Position = UDim2.new(0, 10, 0, 270)
EspToggle.Size = UDim2.new(0, 280, 0, 50)
EspToggle.Text = "Toggle ESP"
EspToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
EspToggle.TextScaled = true

EspLever.Name = "EspLever"
EspLever.Parent = MainFrame
EspLever.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
EspLever.Position = UDim2.new(0, 10, 0, 330)
EspLever.Size = UDim2.new(0, 60, 0, 30)

EspKnob.Name = "EspKnob"
EspKnob.Parent = EspLever
EspKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
EspKnob.Size = UDim2.new(0, 30, 0, 30)
EspKnob.Position = UDim2.new(0, 0, 0, 0)
EspKnob.Text = ""

FpsLabel.Name = "FpsLabel"
FpsLabel.Parent = MainFrame
FpsLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
FpsLabel.Position = UDim2.new(0, 10, 0, 370)
FpsLabel.Size = UDim2.new(0, 280, 0, 50)
FpsLabel.Text = "FPS: 0"
FpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FpsLabel.TextScaled = true

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = MainFrame
MinimizeButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MinimizeButton.Position = UDim2.new(0, 260, 0, 0)
MinimizeButton.Size = UDim2.new(0, 40, 0, 40)
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextScaled = true

MinimizedCircle.Name = "MinimizedCircle"
MinimizedCircle.Parent = ScreenGui
MinimizedCircle.BackgroundTransparency = 1
MinimizedCircle.Size = UDim2.new(0, 100, 0, 100)
MinimizedCircle.Position = UDim2.new(0.05, 0, 0.05, 0)
MinimizedCircle.Text = "NeonScripting"
MinimizedCircle.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizedCircle.TextScaled = true
MinimizedCircle.Visible = false
MinimizedCircle.Active = true
MinimizedCircle.Draggable = true

local minimized = false

-- Minimieren und Maximieren der GUI
local function minimizeGui()
    minimized = not minimized
    if minimized then
        MainFrame.Visible = false
        MinimizedCircle.Visible = true
    else
        MainFrame.Visible = true
        MinimizedCircle.Visible = false
    end
end

MinimizeButton.MouseButton1Click:Connect(minimizeGui)
MinimizedCircle.MouseButton1Click:Connect(minimizeGui)

-- Godmode-Funktionalität
local godModeEnabled = false

local function toggleGodMode()
    godModeEnabled = not godModeEnabled
    if godModeEnabled then
        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
        game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
        game.StarterGui:SetCore("SendNotification", {
            Title = "Godmode",
            Text = "Godmode aktiviert!",
            Icon = "",
            Duration = 5
        })
        GodModeButton.Text = "Godmode deaktivieren"
        GodModeKnob.Position = UDim2.new(0, 30, 0, 0)
        GodModeKnob.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
        game.StarterGui:SetCore("SendNotification", {
            Title = "Godmode",
            Text = "Godmode deaktiviert!",
            Icon = "",
            Duration = 5
        })
        GodModeButton.Text = "Godmode aktivieren"
        GodModeKnob.Position = UDim2.new(0, 0, 0, 0)
        GodModeKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end

GodModeButton.MouseButton1Click:Connect(toggleGodMode)
GodModeKnob.MouseButton1Click:Connect(toggleGodMode)

-- Toggle Notifications
local notifications = false

local function toggleNotifications()
    notifications = not notifications
    if notifications then
        NotificationToggle.Text = "Benachrichtigungen ausschalten"
        NotificationKnob.Position = UDim2.new(0, 30, 0, 0)
        NotificationKnob.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        NotificationToggle.Text = "Benachrichtigungen einschalten"
        NotificationKnob.Position = UDim2.new(0, 0, 0, 0)
        NotificationKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end

NotificationToggle.MouseButton1Click:Connect(toggleNotifications)
NotificationKnob.MouseButton1Click:Connect(toggleNotifications)

-- Toggle ESP
local function toggleEsp()
    esp:Toggle(not esp.Enabled)
    if esp.Enabled then
        EspToggle.Text = "ESP ausschalten"
        EspKnob.Position = UDim2.new(0, 30, 0, 0)
        EspKnob.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        EspToggle.Text = "ESP einschalten"
        EspKnob.Position = UDim2.new(0, 0, 0, 0)
        EspKnob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end

EspToggle.MouseButton1Click:Connect(toggleEsp)
EspKnob.MouseButton1Click:Connect(toggleEsp)

-- FPS-Anzeige erstellen
local lastTime = tick()
local frames = 0

game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    frames = frames + 1
    if tick() - lastTime >= 1 then
        local fps = frames / (tick() - lastTime)
        FpsLabel.Text = string.format("FPS: %.0f", fps)
        frames = 0
        lastTime = tick()
    end
end)

-- Original-Code-Teile (angepasst für GUI)
-- Setze Hitbox-Größe, Transparenz-Level
local size = Vector3.new(25, 25, 25)
local trans = 1

-- ESP Konfiguration
esp.Boxes = true
esp.Names = false
esp.Tracers = false
esp.Players = false

esp:AddObjectListener(workspace, {
   Name = "soldier_model",
   Type = "Model",
   Color = Color3.fromRGB(255, 0, 0),  -- Leuchtend Rot

   PrimaryPart = function(obj)
       local root
       repeat
           root = obj:FindFirstChild("HumanoidRootPart")
           task.wait()
       until root
       return root
   end,

   Validator = function(obj)
       task.wait(1)
       if obj:FindFirstChild("friendly_marker") then
           return false
       end
       return true
   end,

   CustomName = "?",
   IsEnabled = "enemy"
})

esp.enemy = true

-- Restlicher Code
local start = os.clock()
task.wait(1)

for _, v in pairs(workspace:GetDescendants()) do
   if v.Name == "soldier_model" and v:IsA("Model") and not v:FindFirstChild("friendly_marker") then
       local pos = v:FindFirstChild("HumanoidRootPart").Position
       for _, bp in pairs(workspace:GetChildren()) do
           if bp:IsA("BasePart") then
               local distance = (bp.Position - pos).Magnitude
               if distance <= 5 then
                   bp.Transparency = trans
                   bp.Size = size
               end
           end
       end
   end
end

local finish = os.clock()
local time = finish - start
local rating
if time < 3 then
    rating = "schnell"
elif time < 5 then
    rating = "akzeptabel"
else
    rating = "langsam"
end
game.StarterGui:SetCore("SendNotification", {
    Title = "Scriptet by NeonScripting",
    Text = string.format("Cheat wurde in %.2f Sekunden (%s injected)", time, rating),
    Icon = "",
    Duration = 5
})
