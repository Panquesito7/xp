commandsTxT = [[
1. /xp <name>
Description: Displays the total experience points (XP) and level of the specified player. If no player name is specified, it will show the information for the executing user.

2. /xp_add <player_name> <amount>
Description: Adds the specified amount of experience points (XP) to the indicated player.

3. /xp_remove <player_name> <amount>
Description: Removes the specified amount of experience points (XP) from the indicated player.

4. /xp_set_level <player_name> <level>
Description: Sets the level of the specified player to the provided value.

5. /xp_levelup <player_name>
Description: Increases the level of the specified player by one.

6. /xp_leveldown <player_name>
Description: Decreases the level of the specified player by one.

7. /xp_top
Description: Displays a formspec showing the ranking of players connected to the server based on their experience level.

8. /xp_top_list
Description: Shows a list in the chat with the ranking of players connected to the server based on their experience level.

9. /xp_reset <player_name>
Description: Resets both the experience points (XP) and level of the specified player.

10. /xp_add_ft modname:toolname
Description: Adds a tool to the list of tools that do not grant experience when mining ores, preventing XP farming with enchanted tools.

11. /xp_remove_ft modname:toolname
Description: Removes a tool from the list of tools that do not grant experience when mining ores.

12. /xp_show_ft
Description: Displays in the chat a list of tools that do not grant experience when mining ores.

13. /xp_hud <1|2|off>
Description: Allows changing the Heads-Up Display (HUD) configuration.
1: Activates the first configuration.
2: Activates the second configuration.
off: Disables the HUD (default setting).
]]

oresTxT = [[
Players can acquire experience points (XP) by mining ores, and a predefined amount will be awared when digging. The following is a list detailing the XP values awarded for each ore:

Default:
1. default:stone_with_coal = 1
2. x_default:stone_with_lapis = 2
3. default:stone_with_tin = 2
4. default:stone_with_iron = 3
5. default:stone_with_copper = 3
6. default:stone_with_mese = 5
7. default:stone_with_gold = 5
8. default:stone_with_diamond = 8

Legendary Ore (only if the mod is installed):
1. legendary_ore:legendary_ore = 5

Rainbow Ore (only if the mod is installed):
1. rainbow_ore:rainbow_ore_block = 5

MoreOres (only if the mod is installed):
1. moreores:mineral_mithril = 3
2. moreores:mineral_silver = 3

Lapis (only if the mod is installed):
1. lapis:stone_with_lapis = 2

Atium (only if the mod is installed):
1. atium:atium_ore = 3
]]

entityTxT = [[
Players can accrue experience points (XP) by defeating entities (mobs/monsters) or by eliminating other players.
Upon killing another player, the assailant will gain 10% of the victim's XP.
Below is a list detailing the XP values granted by each entity upon demise:

1. Dirt Monster (mobs_monster:dirt_monster) = 7
2. Dungeon Master (mobs_monster:dungeon_master) = 40
3. Oerkki mobs (monster:oerkki) = 12
4. Sand Monster (mobs_monster:sand_monster) = 7
5. Stone Monster (mobs_monster:stone_monster) = 5
6. Tree Monster (mobs_monster:tree_monster) = 5
7. Lava Flan (mobs_monster:lava_flan) = 12
8. Mese Monster (mobs_monster:mese_monster) = 3
9. Spider (mobs_monster:spider) = 6
10. Land Guard (mobs_monster:land_guard) = 15
11. Fire Spirit (mobs_monster:fire_spirit) = 10
12. Balrog (spawners_mobs:balrog) = 500
13. Bunny Evil (spawners_mobs:bunny_evil) = 5
14. Mummy (spawners_mobs:mummy) = 14
15. Uruk Hai (spawners_mobs:uruk_hai) = 14
16. Bat (mobs_bat:bat) = 14
]]

rewardsTxT = [[
Players receive rewards upon reaching levels up to the official maximum set at level 43.
Administrators have the ability to set custom rewards for specific levels using the /xp_add_reward <level> <modname:itemname> <amount> command. This command allows you to overwrite existing rewards. Example, if a reward is already assigned to level 12, using the command will replace it with the new reward specified by the administrator.

If no custom rewards have been set, levels contain default rewards. 
The following is a list of default rewards assigned from level 2 to level 43:

|2| default:pick_diamond = 1
|3| default:steelblock = 20
|4| default:copperblock = 20
|5| default:bronzeblock = 40
|6| default:mese = 30
|7| default:stone_with_diamond = 40
|8| default:chest_locked = 25
|9| default:sword_diamond = 1
|10| default:stone_with_iron = 50
|11| default:tinblock = 50
|12| default:tree = 99
|13| wool:red = 99
|14| farming:bread = 99
|15| doors:door_steel = 30
|16| default:book = 50
|17| bucket:bucket_lava = 1
|18| default:bookshelf = 50
|19| default:brick = 99
|20| carts:powerrail = 80
|21| default:copper_ingot = 99
|22| default:pine_tree = 99
|23| default:meselamp = 70
|24| default:lava_source = 1
|25| default:stone_with_gold = 50
|26| default:stone_with_mese = 70
|27| default:water_source = 1
|28| fire:permanent_flame = 50
|29| wool:yellow = 99
|30| xpanes:trapdoor_steel_bar = 80
|31| wool:black = 99
|32| default:mese = 99
|33| default:obsidian = 99
|34| default:goldblock = 99
|35| default:bronzeblock = 99
|36| default:copperblock = 99
|37| default:diamondblock = 30
|38| default:steelblock = 50
|39| farming:straw = 50
|40| default:stone_with_gold = 50
|41| default:tinblock = 99
|42| default:mese = 99
|43| default:diamondblock = 99
]]

ranksTxT = [[
In addition to receiving rewards as they advance through levels, players acquire special ranks according to their current level.
The available ranks and the corresponding level to obtain them are detailed below:

1. Newcomer = (1-3)
2. Aspirant = (4-6)
3. Freshman = (7-9)
4. Wayfarer = (10-12)
5. Voyager = (13-15)
6. Trailblazer = (16-18)
7. Citizen = (19-21)
8. Veteran = (22-24)
9. Master = (25-27)
10. Hero = (28-30)
11. Legend = (31-33)
12. Mythic = (34-36)
13. Supreme Master = (37-42)
14. Champion = (43-∞)

]]

shopTxT = [[
Players have the option to use the XP store to buy or sell in-game items, with XP serving as the currency, as is evident.

To sell items, players need to have the item they want to sell in hand and use the command /sell <price> (with a price limit of 4999). To access the shop, the command /shop is used.

It's worth noting that the store functions offline, sellers can list their items, disconnect, and if a buyer makes a purchase, the seller will receive the payment (XP) upon reconnecting (or instantly if the seller is online). All information is updated and saved with each transaction and when the server is shut down.
]]

modsTxT = [[
All of the mods listed below are supported but optional. To experience the maximum potential of the mod, we recommend having Mobs Monster/Bat/Spawners, Default, More Ores, Farming, Wool, and other supported MTG mods.

1. default (optional)
2. wool (optional)
3. farming (optional)
4. doors (optional)
5. bucket (optional)
6. carts (optional)
7. fire (optional)
8. xpanes (optional)
9. unified_inventory (optional)
10. mobs_monster (optional)
11. mobs_bat (optional)
12. spawners_mobs (optional)
13. legendary_ore (optional)
14. rainbow_ore (optional)
15. moreores (optional)
16. lapis (optional)
17. atium (optional)
]]

local mainFormspec = "size[8,8]" ..
	"bgcolor[#080808BB;true]" ..
	"background9[0,0;8,8;xp_shop_bg.png;true]"..
	"label[0,0;XP MOD Information]"..
	"box[-0.1,-0.1;8,0.7;#020202]"..
	"image_button[0,1;8,0.8;xp_bg.png;cmd_commands;Commands]"..
	"image_button[0,2;8,0.8;xp_bg.png;cmd_ores;How to get XP by ores]"..
	"image_button[0,3;8,0.8;xp_bg.png;cmd_entity;How to get XP by mobs/players]"..
	"image_button[0,4;8,0.8;xp_bg.png;cmd_rewards;Level up rewards]"..
	"image_button[0,5;8,0.8;xp_bg.png;cmd_ranks;Rank System]"..
	"image_button[0,6;8,0.8;xp_bg.png;cmd_shop;How to use XP Shop]"..
	"image_button[0,7;8,0.8;xp_bg.png;cmd_mods;Supported Mods]"

local commandsFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;Commands Information]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. commandsTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;cmd_back;Back]"

local oresFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;How to get XP by ores]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. oresTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;ores_back;Back]"

local entityFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;How to get XP by mobs/players]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. entityTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;entity_back;Back]"

local rewardsFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;Level up rewards]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. rewardsTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;rewards_back;Back]"

local ranksFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;Rank System]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. ranksTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;ranks_back;Back]"

local shopFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;How to use XP Shop]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. shopTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;shop_back;Back]"

local modsFormspec = "size[8,8]" ..
    "bgcolor[#080808BB;true]" ..
    "background9[0,0;8,8;xp_shop_bg.png;true]"..
    "label[0,0;Supported Mods]"..
    "box[-0.1,-0.1;8,0.7;#020202]"..
	"textarea[0.2,0.7;8.2,8;;;" .. modsTxT .. "]"..
    "image_button[0,7.6;8,0.8;xp_bg.png;mods_back;Back]"

minetest.register_chatcommand("xp_help", {
    params = "",
    description = "Mod information",
    func = function(name, param)
        minetest.show_formspec(name, "xp_information", mainFormspec)
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname == "xp_information" then
        if fields.cmd_commands then
            minetest.show_formspec(player:get_player_name(), "xp_commands", commandsFormspec)
        elseif fields.cmd_ores then
            minetest.show_formspec(player:get_player_name(), "xp_ores", oresFormspec)
        elseif fields.cmd_entity then
            minetest.show_formspec(player:get_player_name(), "xp_entity", entityFormspec)
        elseif fields.cmd_rewards then
            minetest.show_formspec(player:get_player_name(), "xp_rewards", rewardsFormspec)
        elseif fields.cmd_ranks then
            minetest.show_formspec(player:get_player_name(), "xp_ranks", ranksFormspec)
        elseif fields.cmd_shop then
            minetest.show_formspec(player:get_player_name(), "xp_shop", shopFormspec)
        elseif fields.cmd_mods then
            minetest.show_formspec(player:get_player_name(), "xp_mods", modsFormspec)
        end
    elseif formname == "xp_commands" then
        if fields.cmd_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_ores" then
        if fields.ores_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_entity" then
        if fields.entity_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_rewards" then
        if fields.rewards_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_ranks" then
        if fields.ranks_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_shop" then
        if fields.shop_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    elseif formname == "xp_mods" then
        if fields.mods_back then
            minetest.show_formspec(player:get_player_name(), "xp_information", mainFormspec)
        end
    end
end)