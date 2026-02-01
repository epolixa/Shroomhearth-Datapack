# Executor: Player who exceeded harmony threshold and is attempting to spawn a harmony cap
# Position: The player

tellraw @a[tag=debug_harmony] "[harmony:harmony_cap/spawn] selecting position for harmony cap..."

tag @s add spawning_harmony_cap

# Capture the player's current Y level
# Add 16 to it
# and then capture the score in storage
execute store result score @s pos_y run data get entity @s Pos[1]
scoreboard players add @s pos_y 16
execute store result storage shroomhearth:harmony harmony_cap.maxHeight int 1 run scoreboard players get @s pos_y

# Summon a marker to find a suitable spawn location
summon minecraft:marker ~ ~ ~ {Tags:["harmony_cap","harmony_cap_marker"]}

# Spread the marker
function harmony:harmony_cap/m_spread_marker with storage shroomhearth:harmony harmony_cap

# Move position one block down if spreadplayers landed on top of a block that harmony cap can grow in
execute as @e[tag=harmony_cap_marker] at @s if block ~ ~-0.0625 ~ #harmony:harmony_cap_grows_in_with_layers[layers=1] run tp @s ~ ~-1 ~
execute as @e[tag=harmony_cap_marker] at @s if block ~ ~-0.0625 ~ #harmony:harmony_cap_grows_in run tp @s ~ ~-1 ~

# Check if the marker can spawn a harmony cap
execute as @e[tag=harmony_cap_marker] at @s run function harmony:harmony_cap/check_marker

tag @s remove spawning_harmony_cap