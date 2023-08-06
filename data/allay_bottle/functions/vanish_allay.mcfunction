# Executes from the context of an allay that a player used a bottle on

# Store the name of the allay if it has one
execute if data entity @s CustomName run data modify storage allay_bottle name set from entity @s CustomName

# Spawn allay bottle
loot spawn ~ ~ ~ loot allay_bottle:allay_bottle_from_allay

# Schedule function to modify item bottle lore next tick 
schedule function allay_bottle:find_allay_bottle_from_allay 1t

# Merge some data to make death cleaner
effect give @s invisibility infinite
data modify entity @s Pos[1] set value -64d
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true, HandItems:[{},{}], Tags:["delete"]}

# Schedule death next tick
schedule function allay_bottle:kill_marked_allay 1s