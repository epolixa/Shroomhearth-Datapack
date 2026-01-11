tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:use_goat_horn] "},{"selector":"@s"},{"text":" used Goat Horn"}]

scoreboard players reset @s use_goat_horn

execute if predicate echo_horn:holding_echo_horn run function echo_horn:trigger_echo_horn