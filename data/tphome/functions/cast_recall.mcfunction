tellraw @s "cast recall"

# execute the teleportation
function tphome:teleport_player_to_spawn

# center player on block
execute at @s align xz run tp @s ~.5 ~ ~.5

# fix position if needed
execute at @s unless block ~ ~ ~ minecraft:air run function tphome:fix_position

# play sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.1

# take 1 xp level
xp add @s -1 levels

# clear the slowness
effect clear @s minecraft:slowness

# grant advancement
advancement grant @s only tphome:recall

# clear the casting tag
tag @s remove recalling