local typedefs = require "kong.db.schema.typedefs"

return {
 name = "kong-spec-expose",
 fields = {
  { consumer = typedefs.no_consumer },
  { protocols = typedefs.protocols_http },
  { config = {
      type = "record",
      fields = {
        { spec_url = { type = "string", default = "default"}, },
        }, }, },
    },
}
