# add tags to hostile monster mobs
tag @s[type=minecraft:zombie] add wardable
tag @s[type=minecraft:husk] add wardable
tag @s[type=minecraft:drowned] add wardable
tag @s[type=minecraft:zombie_villager] add wardable
tag @s[type=minecraft:skeleton] add wardable
tag @s[type=minecraft:slime] add wardable
tag @s[type=minecraft:witch] add wardable
tag @s[type=minecraft:stray] add wardable
tag @s[type=minecraft:creeper] add wardable
tag @s[type=minecraft:spider] add wardable
tag @s[type=minecraft:cave_spider] add wardable
tag @s[type=minecraft:phantom] add wardable
tag @s[type=minecraft:ghast] add wardable
tag @s[type=minecraft:magma_cube] add wardable
tag @s[type=minecraft:blaze] add wardable
tag @s[type=minecraft:wither_skeleton] add wardable

# tag zombie pigmen only in the overworld
execute in minecraft:overworld run tag @s[type=minecraft:zombie_pigman,distance=0..] add wardable