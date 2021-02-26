local Animator_2D = {}

function Animator_2D:animation_root()
	return self:get_animation().root
end

function Animator_2D:setup_task(animation, play_once, hide)
	local the_animation = self.animation_cache[animation]

	the_animation.play_once = play_once or false

	the_animation.task = Task.Spawn(function()
		if(the_animation.previous_frame ~= -1) then
			the_animation.frames[the_animation.previous_frame].visibility = Visibility.FORCE_OFF
		end

		the_animation.frames[the_animation.frame_index].visibility = Visibility.FORCE_ON

		if(the_animation.frame_index == #the_animation.frames) then
			the_animation.frame_index = 1

			if(the_animation.play_once) then
				self:stop(animation, hide)
			else
				the_animation.previous_frame = #the_animation.frames
			end
		else
			the_animation.previous_frame = the_animation.frame_index
			the_animation.frame_index = the_animation.frame_index + 1
		end
	end)

	the_animation.task.repeatCount = -1
	the_animation.task.repeatInterval = 1 / self.frames_per_second

	self.current_animation = animation
end

function Animator_2D:play_once(animation, play_once, hide)
	if(not self.animation_cache[animation]) then
		return
	end

	self:stop(nil, true)
	self:setup_task(animation, play_once, hide)
end

function Animator_2D:play(animation, hide)
	if(not self.animation_cache[animation]) then
		return
	end

	self:stop(nil, true)
	self:setup_task(animation, false, hide)
end

function Animator_2D:get_animation(animation)
	local the_animation = nil

	if(animation ~= nil and self.animation_cache[animation] ~= nil) then
		the_animation = self.animation_cache[animation]
	elseif(animation == nil and self.current_animation ~= nil) then
		if(self.animation_cache[self.current_animation]) then
			the_animation = self.animation_cache[self.current_animation]
		end
	end

	return the_animation
end

function Animator_2D:stop(animation, hide)
	local the_animation = self:get_animation(animation)

	if(the_animation ~= nil) then
		if(the_animation.task ~= nil) then
			the_animation.task:Cancel()
			the_animation.task = nil
		end

		the_animation.playing = false

		if(hide) then
			if(type(hide) == "number") then
				Task.Spawn(function()
					self:hide(animation)
				end, hide)
			else
				self:hide(animation)
			end
		end
	end
end

function Animator_2D:hide(animation)
	local the_animation = self:get_animation(animation)

	if(the_animation ~= nil) then
		for f = 1, #the_animation.frames do
			the_animation.frames[f].visibility = Visibility.FORCE_OFF
		end
	end
end

function Animator_2D:setup_animations()
	for k, v in pairs(self.animations) do
		for f = 1, #v:GetChildren() do
			v:GetChildren()[f].visibility = Visibility.FORCE_OFF
		end

		self.animation_cache[k] = {

			root = v,
			frames = v:GetChildren(),
			frame_index = 1,
			previous_frame = -1,
			playing = false,
			play_once = false

		}
	end
end

function Animator_2D:new(animations, frames_per_second)
	self.__index = self

	local o = setmetatable({

		animation_cache = {},
		playing = false,
		frame_index = -1,
		animations = animations,
		current_animation = nil,
		frames_per_second = frames_per_second or 4

	}, self)

	o:setup_animations()

	return o
 end

return Animator_2D