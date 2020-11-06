------------------------------------
--- My first script | treflaa <3 ---
------------------------------------ 

resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

dependency "vrp"

author "treflaa"

client_scripts{ 
	"lib/Tunnel.lua",
	"lib/Proxy.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}