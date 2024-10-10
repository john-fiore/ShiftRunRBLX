-- Shift to Run Script
-- Coded by John F. / @epicjohn_lxxi (RBLX)

local uis = game:GetService("UserInputService")
local hmnd = script.Parent:WaitForChild("Humanoid")
local db = true

uis.InputBegan:Connect(function(input)
	if db then
		if input.KeyCode == Enum.KeyCode.LeftShift then
			hmnd.WalkSpeed = 32
			db = false
		end
	end
end)

uis.InputEnded:Connect(function(input)
	if not db then
		if input.KeyCode == Enum.KeyCode.LeftShift then
			hmnd.WalkSpeed = 16
			db = true
		end
	end
end)
