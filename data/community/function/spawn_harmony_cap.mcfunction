# Context: Player who increased harmony

tag @s add spawning_harmony_cap

# Summon a marker to find a suitable spawn location
summon minecraft:marker ~ ~ ~ {Tags:["harmony_cap","harmony_cap_marker"]}

# Spread the marker within an 8 to 16 block radius
spreadplayers ~ ~ 8 16 true @e[tag=harmony_cap_marker]

# Check if the marker can spawn a harmony cap
execute as @e[tag=harmony_cap_marker] at @s run function community:check_harmony_cap_marker

tag @s remove spawning_harmony_cap