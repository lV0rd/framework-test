local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Controllers = ReplicatedStorage.Source.controllers
local Components = ReplicatedStorage.Source.components
local Shared = ReplicatedStorage.Shared

local Loader = require(Shared.Loader)
Loader.InitModules(Controllers)
Loader.Component.Load(Components)
Loader.Start()
print("Client started! ✔")
