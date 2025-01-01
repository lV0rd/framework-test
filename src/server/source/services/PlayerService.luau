local module = {}

--> Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

--> Variables
--[[
local Red = require(ReplicatedStorage.Packages.Red)
local Events = ReplicatedStorage.Events
--]]
local SharedModules = ReplicatedStorage.Shared
local Packages = ReplicatedStorage.Packages
local ServerModules = ServerStorage.Source.modules

--> References
local Utils = {
	Maid = require(Packages.Maid);
}

local playerClass = require(ServerModules.classes.Player)

module.LoadedPlayers = {}

--> Private Functions
function onAdd(player)
	module.LoadedPlayers[player] = playerClass.new(player, function(character)
		print("Spawned!")
	end, function(character, humanoid)
		print("Died")
	end)
end

function onRemove(player)
	if module.LoadedPlayers[player] then
		module.LoadedPlayers[player]:Destroy()
		module.LoadedPlayers[player] = nil
	end
end

--> Module Functions
function module.getPlayerClass(player) : any?
	return module.LoadedPlayers[player] or nil
end

--> Loader Methods
function module.Init()
	for _, player in Players:GetPlayers() do
		onAdd(player)
	end
	Players.PlayerAdded:Connect(onAdd)
	Players.PlayerRemoving:Connect(onAdd)
end

function module.Start()
	
end

return module