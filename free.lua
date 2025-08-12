--// VortX Hub Key System (Modern Red UI)
if getgenv().VORTX_KEY_DONE then
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/keduaha/gun/main/free.lua"))()
end

local CorrectKey = "VORTXKEY_GHIIRRM6PXFF"
local gui = Instance.new("ScreenGui")
gui.Name = "VortXKeySystem"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

-- Background fade
local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bg.BackgroundTransparency = 0.35

-- Main frame
local main = Instance.new("Frame", bg)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0, 350, 0, 220)
main.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
main.BorderSizePixel = 0
main.BackgroundTransparency = 0
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)

-- Shadow
local shadow = Instance.new("ImageLabel", main)
shadow.ZIndex = -1
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Size = UDim2.new(1, 60, 1, 60)
shadow.Image = "rbxassetid://5028857084"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.5
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(24, 24, 276, 276)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "🔑 VortX Hub | Key System"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Key Box
local keyBox = Instance.new("TextBox", main)
keyBox.Size = UDim2.new(0.8, 0, 0, 40)
keyBox.Position = UDim2.new(0.1, 0, 0.4, 0)
keyBox.PlaceholderText = "Enter Key..."
keyBox.Text = ""
keyBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 16
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 8)

-- Submit Button
local submit = Instance.new("TextButton", main)
submit.Size = UDim2.new(0.8, 0, 0, 40)
submit.Position = UDim2.new(0.1, 0, 0.65, 0)
submit.Text = "Unlock Script"
submit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
submit.TextColor3 = Color3.fromRGB(255, 255, 255)
submit.Font = Enum.Font.GothamBold
submit.TextSize = 16
Instance.new("UICorner", submit).CornerRadius = UDim.new(0, 8)

-- Info Label
local info = Instance.new("TextLabel", main)
info.Size = UDim2.new(1, 0, 0, 30)
info.Position = UDim2.new(0, 0, 0.85, 0)
info.BackgroundTransparency = 1
info.Text = ""
info.TextColor3 = Color3.fromRGB(255, 200, 200)
info.Font = Enum.Font.Gotham
info.TextSize = 13

-- Submit Function
submit.MouseButton1Click:Connect(function()
    if keyBox.Text == CorrectKey then
        info.TextColor3 = Color3.fromRGB(100, 255, 100)
        info.Text = "Key Accepted! Loading..."
        getgenv().VORTX_KEY_DONE = true
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/keduaha/gun/main/free.lua"))()
    else
        info.TextColor3 = Color3.fromRGB(255, 150, 150)
        info.Text = "❌ Wrong Key!"
    end
end)
