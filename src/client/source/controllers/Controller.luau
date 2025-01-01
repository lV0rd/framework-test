local module = {}

--> Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local _HttpService = game:GetService("HttpService")
local _RunService = game:GetService("RunService")
local _Players = game:GetService("Players")

--> Variables
--[[
local Red = require(ReplicatedStorage.Packages.Red)
local Events = ReplicatedStorage.Events
--]]

local Source = ReplicatedStorage.Source

local SharedModules = ReplicatedStorage.Shared
local Packages = ReplicatedStorage.Packages
local _ClientModules = Source.modules

--> References
local _Utils = {
	Maid = require(Packages.Maid);
}
--> Private Functions
function _example()
	
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