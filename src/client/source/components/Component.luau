--> Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

--> Settings
local SETTINGS = {
	Tag = script.Name;	
}

--> Define Component
local Component = {Tag = SETTINGS.Tag}
Component.__index = Component

--> Variables
local SharedModules = ReplicatedStorage.Shared
local Packages = ReplicatedStorage.Packages

--> References
local Utils = {
	Maid = require(Packages.Maid);
}

--> Constructor
function Component.new(instance : any)
	local self = setmetatable({
		["_initialized"] 	= false;
		["Instance"] 		= instance;
		["debounce"]        = false;
		["debounce_time"]   = .5;
		["connections"] = Utils.Maid.new()
		
	}, Component)

	self:_init()
	return self
end

function Component:_init()
	if self._initialized == true then return end
	self._initialized = true
	
	self.connections:GiveTask(function()
		print("Cleaned!")
	end)

	--Events (use maid)

end

function Component:_cleanup()
	if self._initialized == false then return end
	self.connections:Destroy()
	table.clear(self)
	setmetatable(self, nil)
end

return Component