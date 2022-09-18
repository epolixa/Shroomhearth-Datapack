# teleport the player to the marker set at the home destination
execute if data storage recall:temp player{return_dim: "minecraft:overworld"} in minecraft:overworld positioned as @s run tp @a[tag=recalling] ~ ~ ~
execute if data storage recall:temp player{return_dim: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run tp @a[tag=recalling] ~ ~ ~