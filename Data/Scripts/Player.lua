function Tick()
	for i in ipairs(Game.GetPlayers()) do
		Game.GetPlayers()[i]:SetWorldPosition(Vector3.New(0, Game.GetPlayers()[i]:GetWorldPosition().y, Game.GetPlayers()[i]:GetWorldPosition().z))
		Game.GetPlayers()[i]:SetWorldRotation(Rotation.New(0, 0, 90))
	end
end

Game.playerJoinedEvent:Connect(function(player)
	player:SetVisibility(false)

	local scale = player:GetWorldScale()

	scale.x = scale.x - 0.1
	scale.y = scale.y - 0.1
	scale.z = scale.z - 0.1

	player:SetWorldScale(scale)
end)