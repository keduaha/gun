--// VortX Hub Key System
local CorrectKey = "VORTXKEY_GHIIRRM6PXFF" -- Key yang digunakan

-- Buat ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "VortXKeySystem"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

-- Background semi transparan
local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bg.BackgroundTransparency = 0.4

-- Frame utama
local main = Instance.new("Frame", bg)
main.Size = UDim2.new(0, 300, 0, 200)
main.Position = UDim2.new(0.5, -150, 0.5, -100)
main.BackgroundColor3 = Color3.fromRGB(150, 0, 0) -- Merah gelap
main.BorderSizePixel = 0
main.ClipsDescendants = true
main.AnchorPoint = Vector2.new(0.5, 0.5)
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

-- Judul
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "🔑 VortX Hub | Key System"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 18

-- Box input
local keyBox = Instance.new("TextBox", main)
keyBox.Size = UDim2.new(0.8, 0, 0, 35)
keyBox.Position = UDim2.new(0.1, 0, 0.4, 0)
keyBox.PlaceholderText = "Enter Key..."
keyBox.Text = ""
keyBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Merah
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 14
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 6)

-- Tombol Submit
local submit = Instance.new("TextButton", main)
submit.Size = UDim2.new(0.8, 0, 0, 35)
submit.Position = UDim2.new(0.1, 0, 0.65, 0)
submit.Text = "Submit"
submit.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Merah terang
submit.TextColor3 = Color3.fromRGB(255, 255, 255)
submit.Font = Enum.Font.GothamBold
submit.TextSize = 14
Instance.new("UICorner", submit).CornerRadius = UDim.new(0, 6)

-- Label info
local info = Instance.new("TextLabel", main)
info.Size = UDim2.new(1, 0, 0, 30)
info.Position = UDim2.new(0, 0, 0.85, 0)
info.BackgroundTransparency = 1
info.Text = ""
info.TextColor3 = Color3.fromRGB(255, 100, 100)
info.Font = Enum.Font.Gotham
info.TextSize = 12

-- Fungsi submit
submit.MouseButton1Click:Connect(function()
    if keyBox.Text == CorrectKey then
        info.TextColor3 = Color3.fromRGB(100, 255, 100)
        info.Text = "Key Accepted! Loading..."
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/keduaha/gun/main/free.lua"))()
    else
        info.TextColor3 = Color3.fromRGB(255, 200, 200)
        info.Text = "Wrong Key!"
    end
end)
