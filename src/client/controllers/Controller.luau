local module = {}

--> Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

--> Variables
--[[
local Signals = ReplicatedStorage.Signals
local Red = require(ReplicatedStorage.Red)
local Events = Signals.Client
--]]

local SharedModules = ReplicatedStorage.Shared
local ClientModules = script.modules

--> References
local Utils = {
	Maid = require(SharedModules.Maid);
}
--> Private Functions
function example()
	
end

--> Module Functions
function module.example() : any?

end

--> Loader Methods
function module.Init()
	
end

function module.Start()
	
end

return module