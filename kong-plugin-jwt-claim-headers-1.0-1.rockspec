package = "kong-plugin-jwt-claim-headers"
version = "1.0-1"
source = {
  url = "TBD"
}
description = {
  summary = "A Kong plugin to map JWT claims to request headers ",
  license = "MIT",
  homepage = "https://geeks.wego.com"
}
dependencies = {
  "lua ~> 5.1",
  "kong >= 0.10"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-claim-headers.handler"] = "handler.lua",
    ["kong.plugins.jwt-claim-headers.schema"]  = "schema.lua",
    ["kong.plugins.jwt-claim-headers.claim_headers"]  = "claim_headers.lua"
  }
}
