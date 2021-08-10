
local a = {}

local function a:Init()
	local mt = getrawmetatable(game)
	setreadonly(mt,false)
	local backup = mt.__namecall
	mt.__namecall = newcclosure(function(self,...)
		if checkcaller() then return backup(self,...) end
		if getnamecallmethod() == "FireServer" then
			local args = {...}
			if tostring(self) == "1Event" then
				return wait(1e19)
			end
		end
		return backup(self,...)
	end)
	-----------------------------------------
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Flex Time", "GrapeTheme")
	local Tab = Window:NewTab("Main")
	local Section = Tab:NewSection("Main")
	local Section2 = Tab:NewSection("Misc")
	-----------------------------------------
	local WSRespawn = false
	local ReachRespawn = false
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer
	local Character = Player.Character or Player.CharacterAdded:Wait()
	-----------------------------------------
	Section:NewButton("ButtonText", "ButtonInfo", function()
		print("Clicked")
	end)

	Section:NewSlider("Walkspeed", "SliderInfo", 50, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		Character.Humanoid.WalkSpeed = s
	end)
	print("ran")
end
return a
