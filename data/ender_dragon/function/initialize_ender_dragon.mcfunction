# Executes from the context of an Ender Dragon that has recently been summoned and not yet been initialized

# Reset fight scores for all involved players
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatDeaths 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatMobs 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatEndermen 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatCrystals 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatHits 0
scoreboard players set shroomhearth dragStatSlayTime 0

# Calculate the Ender Dragon's omen_level and determine if it is an Omen Ender Dragon
execute in minecraft:the_end positioned 0 64 0 as @n[type=minecraft:ender_dragon] at @s run function ender_dragon:set_omen_level

# Perform additional initialization steps for Omen Ender Dragons
execute as @s[tag=omen_ender_dragon] run function ender_dragon:initialize_omen_dragon

# tag dragon when done
tag @s add initialized