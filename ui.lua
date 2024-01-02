-- Gui to Lua
-- Version: 3.2

-- Instances:

local UI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Loading = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Ver = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Bar = Instance.new("Frame")
local Filler = Instance.new("Frame")
local Loading_2 = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local dc = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

UI.Name = "UI"
UI.Parent = game.CoreGui
UI.Enabled = false

Frame.Parent = UI
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.fromScale(0, 0)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

Loading.Name = "Loading"
Loading.Parent = Frame
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading.BorderSizePixel = 0
Loading.Position = UDim2.new(0.499314755, 0, 0.157977015, 0)
Loading.Size = UDim2.new(0.507614195, 0, 0.191570908, 0)
Loading.Font = Enum.Font.FredokaOne
Loading.Text = "RedZ Hub"
Loading.TextColor3 = Color3.fromRGB(0, 0, 0)
Loading.TextScaled = true
Loading.TextSize = 14.000
Loading.TextWrapped = true

UITextSizeConstraint.Parent = Loading
UITextSizeConstraint.MaxTextSize = 50

Ver.Name = "Ver"
Ver.Parent = Frame
Ver.AnchorPoint = Vector2.new(0.5, 0.5)
Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ver.BackgroundTransparency = 1.000
Ver.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ver.BorderSizePixel = 0
Ver.Position = UDim2.new(0.499314815, 0, 0.301655143, 0)
Ver.Size = UDim2.new(0.634517729, 0, 0.0957854539, 0)
Ver.Font = Enum.Font.FredokaOne
Ver.Text = "Test Build: v1.2.6 | Game: PS99"
Ver.TextColor3 = Color3.fromRGB(0, 0, 0)
Ver.TextScaled = true
Ver.TextSize = 14.000
Ver.TextWrapped = true

UITextSizeConstraint_2.Parent = Ver
UITextSizeConstraint_2.MaxTextSize = 20

Bar.Name = "Bar"
Bar.Parent = Frame
Bar.AnchorPoint = Vector2.new(0.5, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 0.700
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.500583649, 0, 0.579432964, 0)
Bar.Size = UDim2.new(0.885786712, 0, 0.383141816, 0)

Filler.Name = "Filler"
Filler.Parent = Bar
Filler.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Filler.BorderColor3 = Color3.fromRGB(0, 0, 0)
Filler.BorderSizePixel = 0
Filler.Size = UDim2.new(0, 0, 1, 0)

Loading_2.Name = "Loading"
Loading_2.Parent = Bar
Loading_2.AnchorPoint = Vector2.new(0.5, 0.5)
Loading_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading_2.BackgroundTransparency = 1.000
Loading_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading_2.BorderSizePixel = 0
Loading_2.Position = UDim2.new(0.49954474, 0, 0.492977053, 0)
Loading_2.Size = UDim2.new(0.542458117, 0, 0.70157057, 0)
Loading_2.Font = Enum.Font.FredokaOne
Loading_2.Text = "l:  0%"
Loading_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Loading_2.TextScaled = true
Loading_2.TextSize = 14.000
Loading_2.TextWrapped = true

UITextSizeConstraint_3.Parent = Loading_2
UITextSizeConstraint_3.MaxTextSize = 70

dc.Name = "dc"
dc.Parent = Bar
dc.AnchorPoint = Vector2.new(0.5, 0.5)
dc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dc.BackgroundTransparency = 1.000
dc.BorderColor3 = Color3.fromRGB(0, 0, 0)
dc.BorderSizePixel = 0
dc.Position = UDim2.new(0.496679395, 0, 1.31797695, 0)
dc.Size = UDim2.new(0.679993987, 0, 0.43157059, 0)
dc.Font = Enum.Font.FredokaOne
dc.Text = "discord.gg/redzhub"
dc.TextColor3 = Color3.fromRGB(0, 0, 0)
dc.TextScaled = true
dc.TextSize = 14.000
dc.TextWrapped = true

UITextSizeConstraint_4.Parent = dc
UITextSizeConstraint_4.MaxTextSize = 29

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.510


UI.Enabled = true
Frame:TweenSize(UDim2.new(0.42640692, 0, 0.402777731, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.5, true)
task.wait(1)

local lTime = 15;
local s = Bar.Size.X.Scale / 100
for i = 1, 100, 1 do
    local d = s * i
    Filler.Size = UDim2.fromScale(d, 1)
    Bar.Loading.Text = "l: "..tostring(i).."%"

    task.wait(lTime / 100)
end

Bar.Loading.Text = "l: Waiting for Server Response"
repeat task.wait() until getgenv().Ready == true
Bar.Loading.Text = "l: Ready!"
task.wait(1)
UI:Destroy()

loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
