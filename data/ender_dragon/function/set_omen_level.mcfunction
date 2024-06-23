# Executes from the context of the Ender Dragon when it is first summoned (and periodically throughout the fight).

# Set the dragon's omen_level to the combined omen_level of all players.
scoreboard players set @s omen_level 0
execute as @a[predicate=ender_dragon:on_main_end_island] at @s run function shroomhearth:update_omen_level
execute as @a[predicate=ender_dragon:on_main_end_island,scores={omen_level=1..}] run scoreboard players operation @n[type=minecraft:ender_dragon] omen_level += @s omen_level

# Add or remove tag for the ender dragon according to its omen_level
tag @s[scores={omen_level=..0}] remove omen_ender_dragon
tag @s[scores={omen_level=1..}] add omen_ender_dragon

# Play sounds to indicate the dragon's omen_level was calculated
execute as @s[tag=omen_ender_dragon] run playsound minecraft:entity.ender_dragon.growl hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 200 0.5
execute as @s[tag=omen_ender_dragon] run playsound minecraft:ambient.cave hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 200 0.5

# Give omen ender dragon a custom name
execute as @s[tag=!omen_ender_dragon] run data modify entity @s CustomName set value '"Ender Dragon"'
execute as @s[tag=omen_ender_dragon] in minecraft:the_end positioned 0 60 0 run function ender_dragon:set_omen_ender_dragon_name

# Change ender dragon attributes?
# scale?