--!strict
local Event = require(script.Parent:WaitForChild('event'))

local Structs = {}
Structs.__index = Structs

export type StructObject = typeof(setmetatable({} :: {
	Properties: {[string]: any},
	Name: string,

	onChanged: Event.Event,

	Deconstruct:()->nil,
	Copy:()->nil
}, Structs))

local function new(name:string):({[string]:any})->StructObject
	return function(properties:{[string]:any}):StructObject
		local self:{[string]:any} = {
			Properties = {},
			Name = name,

			onChanged = Event "onChanged",
		}

		function self:Copy(properties:{[string]:any})
			return new(self.Name)(properties or self.Properties)
		end

		function self:Deconstruct()
			return
		end

		for i:string, v:any in properties do
			self.Properties[i] = v
		end

		local StructObject = setmetatable({} :: any,{
			__index = function(_,k)
				return rawget(self,k) or rawget(self.Properties,k)
			end,

			__newindex = function(_,k,v)
				self.Properties[k] = v
				self.onChanged:Fire(k,v)
			end,

			__call = function(_,v)
				return self:Copy(v)
			end,
		})

		return StructObject
	end
end

return new
