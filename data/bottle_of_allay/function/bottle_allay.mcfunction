# Executes from the context of an allay that a player used a bottle on

# Spawn particles
particle minecraft:trial_spawner_detection_ominous ~ ~0.3125 ~ 0.1875 0.3125 0.1875 0 8

# Store the name of the allay if it has one
#execute if data entity @s CustomName run data modify storage allay_bottle name set from entity @s CustomName

# Clear 1 Amethyst Bottle from player
clear @p[tag=used_amethyst_bottle,gamemode=!creative] minecraft:warped_fungus_on_a_stick[custom_data={spore:"amethyst_bottle"}] 1

# Give allay bottle
execute as @p[tag=used_amethyst_bottle,gamemode=!creative] run loot give @s loot bottle_of_allay:bottle_of_allay

# Give held item back to player


# Schedule function to modify item bottle lore next tick 
#schedule function allay_bottle:find_allay_bottle_from_allay 1t

# Merge some data to make death cleaner
effect give @s invisibility infinite
data modify entity @s Pos[1] set value -64d
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true, equipment:{mainhand:{}}, Tags:["delete"]}

# Schedule death next tick
schedule function bottle_of_allay:kill_marked_allay 1s