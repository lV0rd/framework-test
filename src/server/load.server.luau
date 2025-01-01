local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local Services = ServerStorage.Source.services
local Components = ServerStorage.Source.components
local Shared = ReplicatedStorage.Shared

local Loader = require(Shared.Loader)
Loader.InitModules(Services)
Loader.Component.Load(Components)
Loader.Start()
print("Server started! ✔")