-- Pixel Art from https://grafxkid.tumblr.com/pixels

local Animator_2D = require(script:GetCustomProperty("Animator_2D"))
local camera = script:GetCustomProperty("camera"):WaitForObject()
local dead_frame = script:GetCustomProperty("dead"):WaitForObject()

local offset_x = script:GetCustomProperty("offset_x")
local offset_y = script:GetCustomProperty("offset_y")
local offset_z = script:GetCustomProperty("offset_z")

local local_player = Game.GetLocalPlayer()

local player_animator = Animator_2D:new({

	idle_right = script:GetCustomProperty("idle_right"):WaitForObject(),
	idle_left = script:GetCustomProperty("idle_left"):WaitForObject(),
	run_right = script:GetCustomProperty("run_right"):WaitForObject(),
	run_left = script:GetCustomProperty("run_left"):WaitForObject(),
	punch_right = script:GetCustomProperty("punch_right"):WaitForObject(),
	punch_left = script:GetCustomProperty("punch_left"):WaitForObject(),
	peace = script:GetCustomProperty("peace"):WaitForObject()

})

player_animator:play("idle_right")

local direction = "right"
local camera_z_offset = offset_z
local dead = false

if(Environment.IsSinglePlayerPreview()) then
	camera_z_offset = camera_z_offset - 140
else
	camera_z_offset = camera_z_offset - 400
end

function Tick()
	local pos = local_player:GetWorldPosition()

	player_animator:animation_root():SetWorldPosition(Vector3.New(pos.x + offset_x, pos.y + offset_y, pos.z + offset_z))

	camera:SetWorldPosition(Vector3.New(camera:GetWorldPosition().x, pos.y - offset_y, pos.z - camera_z_offset))

	if(dead) then
		dead_frame:SetWorldPosition(Vector3.New(dead_frame:GetWorldPosition().x, dead_frame:GetWorldPosition().y, dead_frame:GetWorldPosition().z + 4))
	end
end

Game.playerJoinedEvent:Connect(function(p)
	p.bindingPressedEvent:Connect(function(obj, binding)
		if(binding == "ability_extra_30") then -- Left
			direction = "left"
			player_animator:play("run_left")
		end

		if(binding == "ability_extra_32") then -- Right
			direction = "right"
			player_animator:play("run_right")
		end

		if(binding == "ability_extra_17") then -- Jump
			
		end

		if(binding == "ability_extra_12") then -- Left shift
			player_animator:play_once("punch_" .. direction)
		end

		if(binding == "ability_extra_33") then -- F
			player_animator:play("peace")
		end
	end)

	p.bindingReleasedEvent:Connect(function(obj, binding)
		if(binding == "ability_extra_30") then
			player_animator:play("idle_left")
		end

		if(binding == "ability_extra_32") then
			player_animator:play("idle_right")
		end

		if(binding == "ability_extra_17") then
		
		end

		if(binding == "ability_extra_12") then
			player_animator:play("idle_" .. direction)
		end


	end)
end)

Events.Connect("on_death", function()
	local pos = local_player:GetWorldPosition()

	dead_frame:SetWorldPosition(Vector3.New(pos.x + offset_x, pos.y + offset_y, pos.z + offset_z))
	dead_frame.visibility = Visibility.FORCE_ON
	dead = true

	if(not a) then
		offset_z = offset_z - 10
	end

	Task.Spawn(function()
		dead = false
		dead_frame.visibility = Visibility.FORCE_OFF
	end, 4)
end)