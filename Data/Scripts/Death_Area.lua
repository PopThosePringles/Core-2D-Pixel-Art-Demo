local trigger = script:GetCustomProperty("trigger"):WaitForObject()

trigger.beginOverlapEvent:Connect(function(t, obj)
	if(obj:IsA("Player")) then
		obj.movementControlMode = MovementControlMode.NONE
		obj.maxJumpCount = 0

		Events.BroadcastToPlayer(obj, "on_death")
		
		Task.Spawn(function()
			obj:Respawn()
			obj.movementControlMode = MovementControlMode.FIXED_AXES
			obj.maxJumpCount = 1
		end, 3)
	end
end)