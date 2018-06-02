# Kong Spec Expose Plugin
## Overview
This plugin will expose the specification of auth protected API services fronted by the Kong gateway.

In short, API Providers need a means of exposing the specification of their services while maintaining authentication on the service itself, we do so by:

1. Plugin enables Kong users to specify the endpoint of their API specification.

2. Plugin will validate the Proxy request is GET method, and will validate the proxy request ends with "/specz". If these two requirements are met, the endpoint will return the specification documentation of the API Service with Content-Type header identical to what the API Service exposes.

## Supported Kong Releases
Kong >= 0.12.x 

## Installation
Recommended:
```
$ luarocks install kong-spec-expose
```
Other:
```
$ git clone https://github.com/Optum/kong-spec-expose.git /path/to/kong/plugins/kong-spec-expose
$ cd /path/to/kong/plugins/kong-spec-expose
$ luarocks make *.rockspec
```
## Maintainers
[jeremyjpj0916](https://github.com/jeremyjpj0916)  
[rsbrisci](https://github.com/rsbrisci)  

Feel free to open issues, or refer to our [Contribution Guidelines](https://github.com/Optum/kong-spec-expose/blob/master/CONTRIBUTING.md) if you have any questions.
