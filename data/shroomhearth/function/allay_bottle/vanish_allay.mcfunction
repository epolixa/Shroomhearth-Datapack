# Executor: an allay that a player used a bottle on
# Position: the allay

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/vanish_allay] Vanishing bottled allay"}]


# Store the name of the allay if it has one
execute if data entity @s CustomName run data modify storage shroomhearth:allay_bottle name set from entity @s CustomName

# Spawn allay bottle
loot spawn ~ ~ ~ loot shroomhearth:allay_bottle/allay_bottle_from_allay

# Schedule function to modify item bottle lore next tick 
schedule function shroomhearth:allay_bottle/find_allay_bottle_from_allay 1t

# Merge some data to make death cleaner
effect give @s minecraft:invisibility infinite 0 true
data modify entity @s Pos[1] set value -64d
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true, equipment:{mainhand:{}}, Tags:["delete"]}

# Schedule death next tick
schedule function shroomhearth:allay_bottle/kill_marked_allay 1s