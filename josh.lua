local Joshy = Instance.new("ScreenGui")
Joshy.Name = "Joshy"
Joshy.ResetOnSpawn = false
Joshy.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Joshy.IgnoreGuiInset = true

local Image = Instance.new("ImageLabel")
Image.Name = "Image"
Image.Size = UDim2.new(1, 0, 1, 0)
Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Image.BackgroundTransparency = 1
Image.BorderSizePixel = 0
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.Image = "rbxassetid://15502232408"
Image.Parent = Joshy

local Sound = Instance.new("Sound")
Sound.RollOffMode = Enum.RollOffMode.Linear
Sound.Volume = 2
Sound.SoundId = "rbxassetid://15502249681"
Sound.Parent = Joshy

repeat task.wait() until Image.IsLoaded == true

Joshy.Parent = game.Players.LocalPlayer.PlayerGui

Sound:Play()

Sound.Ended:Once(function()
	script.Parent:Destroy()
end)
