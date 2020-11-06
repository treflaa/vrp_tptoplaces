------------------------------------
--- My first script | treflaa <3 ---
------------------------------------ 

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_tptoplaces")

places = {
  ["Sectia de Politie"] = {399.67001342774,-989.19720458984,29.465553283692},
  ["Showroom"] = {-67.178565979004,-1107.2642822266,25.980241775512}, 
  ["Spawn"] = {-234.84730529786,-982.2509765625,29.136503219604}
}

RegisterCommand("tptoplaces", function(player, choice)
  local user_id = vRP.getUserId({player})
     if vRP.hasPermission({user_id, "treflaa.tptoplaces"}) then  -- asta trebuie sa o bagi in vrp/cfg/groups.lua la ce grad vrei tu sa aiba acces    /     you have to put it in vrp/cfg/groups.lua to what degree you want to have access
      local menu_treflaa = {}
        for k, v in pairs(places) do
           menu_treflaa[k] = {function(player, choice)
    	     vRPclient.teleport(player,{ v[1], v[2], v[3]})
          vRP.closeMenu({player})
        end, ""}
      end
      vRP.openMenu({player, menu_treflaa})
    end
  end)