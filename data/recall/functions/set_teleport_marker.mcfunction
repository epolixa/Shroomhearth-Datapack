# move the marker to the home coords in the current dimension
execute store result entity @s Pos[0] double 1.0 run data get storage recall:temp player.return_x
execute store result entity @s Pos[1] double 1.0 run data get storage recall:temp player.return_y
execute store result entity @s Pos[2] double 1.0 run data get storage recall:temp player.return_z

# start forceloading the chunk in the home dimension
execute if data storage recall:temp player{return_dim: "minecraft:overworld"} in minecraft:overworld positioned as @s run forceload add ~ ~
execute if data storage recall:temp player{return_dim: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run forceload add ~ ~

# teleport the marker to the home dimension
execute if data storage recall:temp player{return_dim: "minecraft:overworld"} in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute if data storage recall:temp player{return_dim: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run tp @s ~ ~ ~

# the marker will stay at the forceloaded position until the player recalls...