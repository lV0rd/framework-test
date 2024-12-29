local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local Services = script.services
local Components = script.components
local Shared = ReplicatedStorage.Shared

local Loader = require(Shared.Loader)
Loader.InitModules(Services)
Loader.Component.Load(Components)
Loader.Start()
print("Server started! ✔")