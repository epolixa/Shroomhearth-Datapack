# this tag identifies the player that is returning home
tag @s add cast_recall

# get player's home dimension and coords
data modify storage tphome:temp player set value {}
data modify storage tphome:temp player.return_dim set from entity @s SpawnDimension
data modify storage tphome:temp player.return_x set from entity @s SpawnX
data modify storage tphome:temp player.return_y set from entity @s SpawnY
data modify storage tphome:temp player.return_z set from entity @s SpawnZ

# summon a marker to move to their home
summon minecraft:marker ~ ~ ~ {Tags: ["recall_marker"]}

# run some commands as the marker...
execute as @e[type=minecraft:marker, tag=recall_marker] run function tphome:set_teleport_marker

# remove cast tag
tag @s remove cast_recall