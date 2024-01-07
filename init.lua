local init = minetest.get_us_time()
local lane = minetest.get_modpath('xp')

dofile(lane.."/src/main.lua")
dofile(lane.."/src/cmd.lua")
dofile(lane.."/src/help.lua")
dofile(lane.."/src/shop.lua")
dofile(lane.."/src/unified_inventory.lua")

local done = (minetest.get_us_time() - init) / 1000000

minetest.log("action", "[XP mod] loaded.. [" .. done .. "s]")
