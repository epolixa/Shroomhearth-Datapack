# Executor: Runs every second for players who are using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:using_echo_horn] "},{"selector":"@s"},{"text":" using Echo Horn"}]

# Interrupt cast if not holding echo horn
execute unless predicate echo_horn:holding_echo_horn run function echo_horn:echo_horn_interrupted

# Increment the cast timer
scoreboard players add @s using_echo_horn 1

# Play particles and sounds
particle minecraft:shriek{delay:0} ~ ~ ~ ~ ~ ~ 0 0
execute if score @s using_echo_horn matches 1 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 1 1.3
execute if score @s using_echo_horn matches 2 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 1 1.4
execute if score @s using_echo_horn matches 3 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 1 1.5
execute if score @s using_echo_horn matches 4 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 1 1.6
execute if score @s using_echo_horn matches 5 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 1 1.7

# Attempt to validate the respawn point if using own horn
execute as @s[tag=using_own_echo_horn,tag=has_respawn_data,tag=!has_respawn_block] run function echo_horn:check_respawn_point

# Initiate the teleport once the cast time exceeds 5 seconds
execute if score @s using_echo_horn matches 6.. run function echo_horn:teleport