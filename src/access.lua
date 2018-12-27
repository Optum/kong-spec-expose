local _M = {}
local pl_stringx = require "pl.stringx"
local http = require "resty.http"

function _M.run(conf)
   if ("GET" == ngx.req.get_method() and pl_stringx.endswith(ngx.var.request_uri, "/specz")) then
      local httpc = http:new()
      local res, err = httpc:request_uri(conf.spec_url, {
  	  method = "GET",
	  ssl_verify = false,
	  headers = {}
	  })

      if err then
        return kong.response.exit(500, { message = "An unexpected error occurred" })
      else
        --Set a proper Content-Type header based on what backend returned
	ngx.header['Content-Type'] = res.headers['Content-Type']
	ngx.status = res.status
	ngx.print(res.body)
	ngx.exit(200)
      end
   end
end

return _M
