xp.rewards = {
    [2] = {{name = "default:pick_diamond", count = 1}},
    [3] = {{name = "default:steelblock", count = 20}},
    [4] = {{name = "default:copperblock", count = 20}},
    [5] = {{name = "default:bronzeblock", count = 40}},
    [6] = {{name = "default:mese", count = 30}},
    [7] = {{name = "default:stone_with_diamond", count = 40}},
    [8] = {{name = "default:chest_locked", count = 25}},
    [9] = {{name = "default:sword_diamond", count = 1}},
    [10] = {{name = "default:stone_with_iron", count = 50}},
    [11] = {{name = "default:tinblock", count = 50}},
    [12] = {{name = "default:tree", count = 99}},
    [13] = {{name = "wool:red", count = 99}},
    [14] = {{name = "farming:bread", count = 99}},
    [15] = {{name = "doors:door_steel", count = 30}},
    [16] = {{name = "default:book", count = 50}},
    [17] = {{name = "bucket:bucket_lava", count = 1}},
    [18] = {{name = "default:bookshelf", count = 50}},
    [19] = {{name = "default:brick", count = 99}},
    [20] = {{name = "carts:powerrail", count = 80}},
    [21] = {{name = "default:copper_ingot", count = 99}},
    [22] = {{name = "default:pine_tree", count = 99}},
    [23] = {{name = "default:meselamp", count = 70}},
    [24] = {{name = "default:lava_source", count = 1}},
    [25] = {{name = "default:stone_with_gold", count = 50}},
    [26] = {{name = "default:stone_with_mese", count = 70}},
    [27] = {{name = "default:water_source", count = 1}},
    [28] = {{name = "fire:permanent_flame", count = 50}},
    [29] = {{name = "wool:yellow", count = 99}},
    [30] = {{name = "xpanes:trapdoor_steel_bar", count = 80}},
    [31] = {{name = "wool:black", count = 99}},
    [32] = {{name = "default:mese", count = 99}},
    [33] = {{name = "default:obsidian", count = 99}},
    [34] = {{name = "default:goldblock", count = 99}},
    [35] = {{name = "default:bronzeblock", count = 99}},
    [36] = {{name = "default:copperblock", count = 99}},
    [37] = {{name = "default:diamondblock", count = 30}},
    [38] = {{name = "default:steelblock", count = 50}},
    [39] = {{name = "farming:straw", count = 50}},
    [40] = {{name = "default:stone_with_gold", count = 50}},
    [41] = {{name = "default:tinblock", count = 99}},
    [42] = {{name = "default:mese", count = 99}},
    [43] = {{name = "default:diamondblock", count = 99}},
}

function xp.load_rewards()
    local rewards_file = io.open(minetest.get_worldpath() .. "/xp_rewards.txt", "r")
    if rewards_file then
        local rewards_str = rewards_file:read("*all")
        io.close(rewards_file)
        return minetest.deserialize(rewards_str) or {}
    else
        return {}
    end
end

function xp.save_rewards(rewards)
    local rewards_file = io.open(minetest.get_worldpath() .. "/xp_rewards.txt", "w")
    if rewards_file then
        rewards_file:write(minetest.serialize(rewards))
        io.close(rewards_file)
    end
end

function xp.get_reward(level)
    local rewards = xp.load_rewards()
    if rewards[level] then
        return rewards[level][1]
    elseif xp.rewards[level] then
        return xp.rewards[level][1]
    else
        return nil
    end
end

minetest.register_chatcommand("xp_add_reward", {
    params = "<level> <modname:itemname> <amount>",
    description = "Add a custom reward for the specified level",
    privs = {
		xp_manager = true
	},
    func = function(name, param)
        local level, itemstring, amount = param:match("(%d+)%s+(.+)%s+(%d+)")
        level, amount = tonumber(level), tonumber(amount)

        if level and amount and level > 0 and amount > 0 then
            local rewards = xp.load_rewards()
            if not rewards[level] then
                rewards[level] = {}
            else
                rewards[level] = {}
            end
            table.insert(rewards[level], {name = itemstring, count = amount})
            xp.save_rewards(rewards)
            minetest.chat_send_player(name, "Custom reward added for level " .. level .. ": " .. itemstring .. " x" .. amount)
        else
            minetest.chat_send_player(name, "Invalid parameters. Usage: /xp_add_reward <level> <modname:itemname> <amount>")
        end
    end,
})