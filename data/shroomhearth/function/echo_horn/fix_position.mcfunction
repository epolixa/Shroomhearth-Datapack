# Executor: A player who has just been teleported and may need position fixing
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/fix_position] Fixing position for "},{"selector":"@s"}]

# Check surrounding blocks for air to move the player into
execute at @s unless block ~ ~ ~ minecraft:air if block ~1 ~ ~1 minecraft:air run tp @s ~1 ~ ~1
execute at @s unless block ~ ~ ~ minecraft:air if block ~1 ~ ~ minecraft:air run tp @s ~1 ~ ~
execute at @s unless block ~ ~ ~ minecraft:air if block ~1 ~ ~-1 minecraft:air run tp @s ~1 ~ ~-1
execute at @s unless block ~ ~ ~ minecraft:air if block ~ ~ ~1 minecraft:air run tp @s ~ ~ ~1
execute at @s unless block ~ ~ ~ minecraft:air if block ~ ~ ~-1 minecraft:air run tp @s ~ ~ ~-1
execute at @s unless block ~ ~ ~ minecraft:air if block ~-1 ~ ~1 minecraft:air run tp @s ~-1 ~ ~1
execute at @s unless block ~ ~ ~ minecraft:air if block ~-1 ~ ~ minecraft:air run tp @s ~-1 ~ ~
execute at @s unless block ~ ~ ~ minecraft:air if block ~-1 ~ ~-1 minecraft:air run tp @s ~-1 ~ ~-1
execute at @s unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~1 ~