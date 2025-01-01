# Tin's Framework
This framework consists of services for the server and controllers for the client
with networking supported by Red (credit to: red-blox project)

Every service/controller has two functions: module.Init() and module.Start()

They should be structured like this:
```lua
--> Constructor
local module = {}

--> Define initialize function
function module.Init()

end

--> Define start function
function module.Start()

end

return module
```

This framework also features a component system
Components are made with OOP

Every component should be structed like this:
```lua
--[[
It is prefered to handle connection cleaning with a maid class.
]]

--> Settings
local SETTINGS = {
	Tag = script.Name;	
}

--> Define Component
local Component = {Tag = SETTINGS.Tag}
Component.__index = Component

--> Constructor
function Component.new()
    local self = setmetatable({
        ["_initialized"] 	= false;
        ["Instance"] = instance;
        ["Connections"] = {};
    }, Component)

    self:_init()
	return self
end

--> Define init method
function Component:init()
    if self._initialized == true then return end
	self._initialized = true

    
end

function Component:Destroy()
    for _, con in self.Connections do
        con:Disconnect()
        con = nil
    end
end
```

# Packages
Packages are managed through Wally, to add a new package, go to wally.toml and add it in the dependencies

Packages are stored in replicatedStorage, both client scripts and server scripts have access to them.

# Loader methods

The loader comes with a lot of methods that can be useful during development.