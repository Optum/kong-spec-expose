local access = require "kong.plugins.kong-spec-expose.access"

local KongSpecExpose = {} 

KongSpecExpose.PRIORITY = 2400
KongSpecExpose.VERSION = 0.3

function KongSpecExpose:access(conf)
	access.run(conf)
end

return KongSpecExpose
