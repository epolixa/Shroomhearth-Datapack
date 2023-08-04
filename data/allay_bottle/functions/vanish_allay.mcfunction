# Executes from the context of an allay that a player used a bottle on

# Merge some data to make death cleaner
effect give @s invisibility infinite
data modify entity @s Pos[1] set value -64d
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true, HandItems:[{},{}], Tags:["delete"]}

# Schedule death next tick
schedule function allay_bottle:kill_marked_allay 1s