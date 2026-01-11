# Executor: A player who has successfully teleported using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_success] "},{"selector":"@s"},{"text":" successfully teleported with Echo Horn"}]


# Play teleport sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.1

# Center player on block
execute at @s align xz run tp @s ~.5 ~ ~.5

# Apply damage to the echo horn
execute if entity @s[gamemode=!creative] run function echo_horn:damage_echo_horn