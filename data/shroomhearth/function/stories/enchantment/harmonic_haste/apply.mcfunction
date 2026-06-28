# Executor: A Player with the Harmonic Haste enchantment
# Position: The player

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_haste/apply] "},{"selector":"@s"},{"text":" applied Harmonic Haste"}]


# Update duration score
execute unless score @s harmonic_haste matches 1.. run scoreboard players set @s harmonic_haste 0
#playsound minecraft:block.amethyst_block.resonate neutral @s[scores={harmonic_haste=0}] ~ ~ ~ 0.5 2
scoreboard players add @s harmonic_haste 1

# Apply attribute modifiers
attribute @s minecraft:attack_speed modifier add shroomhearth:harmonic_haste.attack_speed 0.1 add_multiplied_total
attribute @s minecraft:block_break_speed modifier add shroomhearth:harmonic_haste.block_break_speed 0.2 add_multiplied_total