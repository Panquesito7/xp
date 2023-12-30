## Introduction

XP, Ranks and Shop mod:
An experiencie (XP) system is implemented that allows players to obtain default or custom rewards at each level. In addition, a shop is incorporated where players can both sell and buy items using XP. Ranks are acquired by leveling up.

## Features:

### XP Acquisition from Mining Ores:

Players can earn experience points (XP) by mining ores, with a predefined amount awarded for each ore. The following is a list detailing the XP values for each ore:

- `default:stone_with_coal = 1`
- `x_default:stone_with_lapis = 2`
- `default:stone_with_tin = 2`
- `default:stone_with_iron = 3`
- `default:stone_with_copper = 3`
- `default:stone_with_mese = 5`
- `default:stone_with_gold = 5`
- `default:stone_with_diamond = 8`
- `legendary_ore:legendary_ore = 5`
- `rainbow_ore:rainbow_ore_block = 5`
- `moreores:mineral_mithril = 3`
- `moreores:mineral_silver = 3`
- `lapis:stone_with_lapis = 2`
- `atium:atium_ore = 3`

### XP Acquisition from Defeating Entities (Mobs/Monsters/Players [+10%]):

Players can accumulate XP by defeating entities (mobs/monsters) or eliminating other players. When killing another player, the assailant gains 10% of the victim's XP. Below is a list detailing the XP values granted by each entity upon demise:

- Dirt Monster (`mobs_monster:dirt_monster`) = 7
- Dungeon Master (`mobs_monster:dungeon_master`) = 40
- Oerkki mobs (`monster:oerkki`) = 12
- Sand Monster (`mobs_monster:sand_monster`) = 7
- Stone Monster (`mobs_monster:stone_monster`) = 5
- Tree Monster (`mobs_monster:tree_monster`) = 5
- Lava Flan (`mobs_monster:lava_flan`) = 12
- Mese Monster (`mobs_monster:mese_monster`) = 3
- Spider (`mobs_monster:spider`) = 6
- Land Guard (`mobs_monster:land_guard`) = 15
- Fire Spirit (`mobs_monster:fire_spirit`) = 10
- Balrog (`spawners_mobs:balrog`) = 500
- Bunny Evil (`spawners_mobs:bunny_evil`) = 5
- Mummy (`spawners_mobs:mummy`) = 14
- Uruk Hai (`spawners_mobs:uruk_hai`) = 14
- Bat (`mobs_bat:bat`) = 14

Welcome any assistance in adding mobs from other mods.

### XP Acquisition from Selling in the Shop:

Players can use the XP store to buy or sell in-game items, with XP as the currency. To sell items, players need to have the item in hand and use the command `/sell <price>` (with a price limit of 4999). The command `/shop` is used to access the shop.

It's worth noting that the store functions offline; sellers can list their items, disconnect, and if a buyer makes a purchase, the seller will receive the payment (XP) upon reconnecting (or instantly if the seller is online). All information is updated and saved with each transaction and server shutdown.

### XP Loss on Death (-10%)

### Level-Up Ranks:

In addition to receiving rewards as they advance through levels, players acquire special ranks according to their current level. The available ranks and the corresponding level to obtain them are detailed below:

- Newcomer = (1-3)
- Aspirant = (4-6)
- Freshman = (7-9)
- Wayfarer = (10-12)
- Voyager = (13-15)
- Trailblazer = (16-18)
- Citizen = (19-21)
- Veteran = (22-24)
- Master = (25-27)
- Hero = (28-30)
- Legend = (31-33)
- Mythic = (34-36)
- Supreme Master = (37-42)
- Champion = (43-∞)

### Level Rewards:

Players receive rewards upon reaching levels up to the official maximum set at level 43. Administrators can set custom rewards for specific levels using the `/xp_add_reward <level> <modname:itemname> <amount>` command. This command allows overwriting existing rewards. For example, if a reward is already assigned to level 12, using the command will replace it with the new reward specified by the administrator.

If no custom rewards have been set, levels contain default rewards. The following is a list of default rewards assigned from level 2 to level 43:

| Level | Item                        | Amount |
|-------|-----------------------------|--------|
| 2     | `default:pick_diamond`      | 1      |
| 3     | `default:steelblock`         | 20     |
| 4     | `default:copperblock`        | 20     |
| 5     | `default:bronzeblock`        | 40     |
| 6     | `default:mese`               | 30     |
| 7     | `default:stone_with_diamond` | 40     |
| 8     | `default:chest_locked`       | 25     |
| 9     | `default:sword_diamond`      | 1      |
| 10    | `default:stone_with_iron`    | 50     |
| 11    | `default:tinblock`           | 50     |
| 12    | `default:tree`               | 99     |
| 13    | `wool:red`                   | 99     |
| 14    | `farming:bread`              | 99     |
| 15    | `doors:door_steel`           | 30     |
| 16    | `default:book`               | 50     |
| 17    | `bucket:bucket_lava`         | 1      |
| 18    | `default:bookshelf`          | 50     |
| 19    | `default:brick`              | 99     |
| 20    | `carts:powerrail`            | 80     |
| 21    | `default:copper_ingot`       | 99     |
| 22    | `default:pine_tree`          | 99     |
| 23    | `default:meselamp`           | 70     |
| 24    | `default:lava_source`        | 1      |
| 25    | `default:stone_with_gold`    | 50     |
| 26    | `default:stone_with_mese`    | 70     |
| 27    | `default:water_source`       | 1      |
| 28    | `fire:permanent_flame`       | 50     |
| 29    | `wool:yellow`                | 99     |
| 30    | `xpanes:trapdoor_steel_bar`  | 80     |
| 31    | `wool:black`                 | 99     |
| 32    | `default:mese`               | 99     |
| 33    | `default:obsidian`           | 99     |
| 34    | `default:goldblock`          | 99     |
| 35    | `default:bronzeblock`        | 99     |
| 36    | `default:copperblock`        | 99     |
| 37    | `default:diamondblock`       | 30     |
| 38    | `default:steelblock`         | 50     |
| 39    | `farming:straw`              | 50     |
| 40    | `default:stone_with_gold`    | 50     |
| 41    | `default:tinblock`           | 99     |
| 42    | `default:mese`               | 99     |
| 43    | `default:diamondblock`       | 99     |

## Available Commands:

- `/xp <name>` <br>
    **Description:** Displays the total experience points (XP) and level of the specified player. If no player name is specified, it will show the information for the executing user.
- `/xp_add <player_name> <amount>` <br>
    **Description:** Adds the specified amount of experience points (XP) to the indicated player.
- `/xp_remove <player_name> <amount>` <br>
    **Description:** Removes the specified amount of experience points (XP) from the indicated player.
- `/xp_set_level <player_name> <level>` <br>
    **Description:** Sets the level of the specified player to the provided value.
- `/xp_levelup <player_name>` <br>
    **Description:** Increases the level of the specified player by one.
- `/xp_leveldown <player_name>` <br>
    **Description:** Decreases the level of the specified player by one.
- `/xp_top` <br>
    **Description:** Displays a formspec showing the ranking of players connected to the server based on their experience level.
- `/xp_top_list` <br>
    **Description:** Shows a list in the chat with the ranking of players connected to the server based on their experience level.
- `/xp_reset <player_name>` <br>
    **Description:** Resets both the experience points (XP) and level of the specified player.
- `/xp_add_ft modname:toolname` <br>
     **Description:** Adds a tool to the list of tools that do not grant experience when mining ores, preventing XP farming with enchanted tools.
- `/xp_remove_ft modname:toolname` <br>
     **Description:** Removes a tool from the list of tools that do not grant experience when mining ores.
- `/xp_show_ft` <br>
     **Description:** Displays in the chat a list of tools that do not grant experience when mining ores.
- `/xp_hud <1|2|off>` <br>
     **Description:** Allows changing the Heads-Up Display (HUD) configuration.
       - `1:` Activates the first configuration.
       - `2:` Activates the second configuration.
       - `off:` Disables the HUD (default setting).

## Contribution

Any assistance in contributing, implementing ideas, or correcting errors is welcome.

Note: HUD is not 100% working.

## License

* MIT License (MIT) for the code.
* Attribution 4.0 International (CC BY 4.0) for textures.