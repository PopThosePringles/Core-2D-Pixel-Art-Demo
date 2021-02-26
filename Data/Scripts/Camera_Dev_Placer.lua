local camera = script:GetCustomProperty("camera"):WaitForObject()
local offset = script:GetCustomProperty("offset")

if(Environment.IsSinglePlayerPreview()) then
	local pos = camera:GetWorldPosition()

	pos.z = pos.z - offset

	camera:SetWorldPosition(pos)
end