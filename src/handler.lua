local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.kong-spec-expose.access"

local KongSpecExpose = BasePlugin:extend()

KongSpecExpose.PRIORITY = 2400

function KongSpecExpose:new()
	KongSpecExpose.super.new(self, "kong-spec-expose")
end

function KongSpecExpose:access(conf)
	KongSpecExpose.super.access(self)
	access.run(conf)
end

return KongSpecExpose
