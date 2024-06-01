# Executes from the context of the Ender Dragon when it is first summoned (and periodically throughout the fight).

# Set the dragon's ominous_level to the combined ominous_level of all players + 1 for each player that has Bad Omen.
# Player's without Bad Omen do not contribute to the dragon's ominous_level.
scoreboard players set @s ominous_level 0

# For players, ominous_level is the additional (amplifier) level of bad omen. For example, if a player has Bad Omen III, ominous_level is 2.
# Increment the dragon's ominous_level by 1 for each player with Bad Omen.
execute as @a[predicate=ender_dragon:on_main_end_island] if data entity @s active_effects[{id:"minecraft:bad_omen"}] run scoreboard players add @n[type=minecraft:ender_dragon] ominous_level 1
# Increase the dragon's ominous_level by the Bad Omen amplifier of each player.
execute as @a[predicate=ender_dragon:on_main_end_island] store result score @s ominous_level run data get entity @s active_effects[{id:"minecraft:bad_omen"}].amplifier
execute as @a[predicate=ender_dragon:on_main_end_island,scores={ominous_level=1..}] run scoreboard players operation @n[type=minecraft:ender_dragon] ominous_level += @s ominous_level

# Reset player's ominous_level
scoreboard players set @a[predicate=ender_dragon:on_main_end_island,scores={ominous_level=1..}] ominous_level 0

# Add or remove tag for the ender dragon according to its ominous_level
tag @s[scores={ominous_level=..0}] remove omen_ender_dragon
tag @s[scores={ominous_level=1..}] add omen_ender_dragon