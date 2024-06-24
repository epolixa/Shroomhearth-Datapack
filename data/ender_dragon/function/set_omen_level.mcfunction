# Executes from the context of the Ender Dragon when it is first summoned (and periodically throughout the fight).

# Set the dragon's omen_level to the combined omen_level of all players.
scoreboard players set @s omen_level 0
execute as @a[predicate=ender_dragon:on_main_end_island] at @s run function shroomhearth:update_omen_level
execute as @a[predicate=ender_dragon:on_main_end_island,scores={omen_level=1..}] run scoreboard players operation @n[type=minecraft:ender_dragon] omen_level += @s omen_level

# Add or remove tag for the ender dragon according to its omen_level
tag @s[scores={omen_level=..0}] remove omen_ender_dragon
tag @s[scores={omen_level=1..}] add omen_ender_dragon
