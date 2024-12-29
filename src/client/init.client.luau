local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local Controllers = script.controllers
local Components = script.components
local Shared = ReplicatedStorage.Shared

local Loader = require(Shared.Loader)
Loader.InitModules(Controllers)
Loader.Component.Load(Components)
Loader.Start()
print("Client started! ✔")
