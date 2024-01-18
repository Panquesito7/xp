minetest.register_on_mods_loaded(function()
    -- Default ores
    if minetest.get_modpath("default") then
        xp.values["default:stone_with_coal"] = 1
        -- xp.values["x_default:stone_with_lapis"] = 2
        xp.values["default:stone_with_tin"] = 2
        xp.values["default:stone_with_iron"] = 3
        xp.values["default:stone_with_copper"] = 3
        xp.values["default:stone_with_mese"] = 5
        xp.values["default:stone_with_gold"] = 5
        xp.values["default:stone_with_diamond"] = 8
    end

    -- Legendary ore https://content.minetest.net/packages/DynamaxPikachu/legendary_ore/
    if minetest.get_modpath("legendary_ore") then
        xp.values["legendary_ore:legendary_ore"] = 5
    end

    -- Rainbow ore https://content.minetest.net/packages/KingSmarty/rainbow_ore/
    if minetest.get_modpath("rainbow_ore") then
        xp.values["rainbow_ore:rainbow_ore_block"] = 5
    end

    -- Moreores https://content.minetest.net/packages/Calinou/moreores/
    if minetest.get_modpath("moreores") then
        xp.values["moreores:mineral_mithril"] = 3
        xp.values["moreores:mineral_silver"] = 3
    end

    -- Lapis https://content.minetest.net/packages/LNJ/lapis/
    if minetest.get_modpath("lapis") then
        xp.values["lapis:stone_with_lapis"] = 2
    end

    -- Atium https://content.minetest.net/packages/GenesisMT/atium/
    if minetest.get_modpath("atium") then
        xp.values["atium:atium_ore"] = 3
    end
end)
