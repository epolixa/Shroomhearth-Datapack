tellraw @s "start recalling"

# add tag
tag @s add recalling

# reset recall timer
scoreboard players reset @s recallTimer

# give slowness
effect give @s slowness 10 5 true

# play sound
playsound minecraft:entity.allay.item_thrown player @a ~ ~ ~ 1 0.5

# store player's home dimension and coords
data modify storage recall:temp player set value {}
data modify storage recall:temp player.return_dim set from entity @s SpawnDimension
data modify storage recall:temp player.return_x set from entity @s SpawnX
data modify storage recall:temp player.return_y set from entity @s SpawnY
data modify storage recall:temp player.return_z set from entity @s SpawnZ

# summon marker to load destination chunk
summon minecraft:marker ~ ~ ~ {Tags: ["recall_marker"], data:{keepChunk:0}}
execute as @e[tag=recall_marker] run function recall:set_teleport_marker