# Executor: A player who just used a goat horn
# Position: The player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:used_goat_horn] "},{"selector":"@s"},{"text":" used Goat Horn"}]


# Reset the used_goat_horn score
scoreboard players reset @s used_goat_horn

# Trigger echo horn functionality if the player is holding an echo horn
execute if predicate echo_horn:holding_echo_horn run function echo_horn:trigger_echo_horn