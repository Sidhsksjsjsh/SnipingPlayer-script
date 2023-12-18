local sp = {}
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdvancedTextCopierGui"
screenGui.Parent = playerGui

local textBoxAtas = Instance.new("TextBox")
textBoxAtas.Name = "InputTextBox"
textBoxAtas.Size = UDim2.new(0, 300, 0, 50)
textBoxAtas.Position = UDim2.new(0.5, -150, 0.2, -25)
textBoxAtas.PlaceholderText = "GameId here"
textBoxAtas.Parent = screenGui

local textBoxBawah = Instance.new("TextBox")
textBoxBawah.Name = "OutputTextBox"
textBoxBawah.Size = UDim2.new(0, 300, 0, 50)
textBoxBawah.Position = UDim2.new(0.5, -150, 0.4, -25)
textBoxBawah.PlaceholderText = "JobId here"
textBoxBawah.Parent = screenGui
--textBoxBawah.TextEditable = false

local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyButton"
copyButton.Size = UDim2.new(0, 150, 0, 50)
copyButton.Position = UDim2.new(0.5, -75, 0.6, -25)
copyButton.Text = "Snipe"
copyButton.Parent = screenGui

function sp.getTextbox1()
    return textBoxAtas.Text
end

function sp.getTextbox2()
    return textBoxBawah.Text
end

function sp.buttonTrigger(func)
copyButton.MouseButton1Click:Connect(function()
    func()
end)
end

return sp
