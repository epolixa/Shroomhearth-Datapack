# Executor: A Player with the Harmonic Strength enchantment
# Position: The player

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_strength/apply] "},{"selector":"@s"},{"text":" applied Harmonic Strength"}]


# Update duration score
execute unless score @s harmonic_strength matches 1.. run scoreboard players set @s harmonic_strength 0
scoreboard players add @s harmonic_strength 1

# Apply attribute modifiers
attribute @s minecraft:attack_damage modifier add shroomhearth:harmonic_strength 3 add_value