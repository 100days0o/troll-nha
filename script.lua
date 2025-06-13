-- Creator: jotaro x ChatGPT
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false

-- Jeff the Killer image
local img = Instance.new("ImageLabel", gui)
img.Size = UDim2.new(1, 0, 1, 0)
img.Position = UDim2.new(0, 0, 0, 0)
img.BackgroundTransparency = 1
img.Image = "https://www.roblox.com/library/15168223234/Jeff-The-Killer-Face"
img.ImageTransparency = 1

-- Flash effect
local flash = Instance.new("Frame", gui)
flash.Size = UDim2.new(1, 0, 1, 0)
flash.Position = UDim2.new(0, 0, 0, 0)
flash.BackgroundColor3 = Color3.new(1, 0, 0)
flash.BackgroundTransparency = 1

-- Background creepy sound (loop)
local mainSound = Instance.new("Sound", gui)
mainSound.SoundId = "rbxassetid://9127893149" -- creepy ambient
mainSound.Volume = 5
mainSound.Looped = true
mainSound:Play()

-- Creepy laugh (once)
local laugh = Instance.new("Sound", gui)
laugh.SoundId = "rbxassetid://7149253271" -- creepy laugh
laugh.Volume = 8
laugh.Looped = false
laugh:Play()

-- Fade in Jeff image
coroutine.wrap(function()
	for i = 1, 100 do
		img.ImageTransparency = img.ImageTransparency - 0.01
		wait(0.015)
	end
end)()

-- Flashing red/white screen
coroutine.wrap(function()
	while true do
		for i = 1, 3 do
			flash.BackgroundTransparency = 0
			flash.BackgroundColor3 = Color3.new(1, 1, 1)
			wait(0.05)
			flash.BackgroundTransparency = 1
			wait(0.05)

			flash.BackgroundTransparency = 0
			flash.BackgroundColor3 = Color3.new(1, 0, 0)
			wait(0.05)
			flash.BackgroundTransparency = 1
			wait(0.05)
		end
		wait(0.3)
	end
end)()

-- Show GOOD BYE after 4 seconds
wait(4)
local goodbyeText = Instance.new("TextLabel", gui)
goodbyeText.Size = UDim2.new(1, 0, 1, 0)
goodbyeText.Position = UDim2.new(0, 0, 0, 0)
goodbyeText.BackgroundTransparency = 1
goodbyeText.Text = "GOOD BYE"
goodbyeText.TextColor3 = Color3.new(1, 0, 0)
goodbyeText.TextStrokeTransparency = 0
goodbyeText.TextScaled = true
goodbyeText.Font = Enum.Font.Arcade

-- Leave game after 3 more seconds (7 total)
wait(3)
player:Kick("Jeff has come for you...")
