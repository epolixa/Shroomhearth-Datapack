################################################################
# End Crystal Ward
# player-placed end crystals ward monsters from spawning
################################################################

# tag hostile monster mobs as wardable - process one at a time
tag @e[type=minecraft:zombie,tag=!wardable] add wardable
tag @e[type=minecraft:husk,tag=!wardable] add wardable
tag @e[type=minecraft:drowned,tag=!wardable] add wardable
tag @e[type=minecraft:zombie_villager,tag=!wardable] add wardable
tag @e[type=minecraft:skeleton,tag=!wardable] add wardable
tag @e[type=minecraft:slime,tag=!wardable] add wardable
tag @e[type=minecraft:witch,tag=!wardable] add wardable
tag @e[type=minecraft:stray,tag=!wardable] add wardable
tag @e[type=minecraft:creeper,tag=!wardable] add wardable
tag @e[type=minecraft:spider,tag=!wardable] add wardable
tag @e[type=minecraft:cave_spider,tag=!wardable] add wardable
tag @e[type=minecraft:phantom,tag=!wardable] add wardable
tag @e[type=minecraft:ghast,tag=!wardable] add wardable
tag @e[type=minecraft:magma_cube,tag=!wardable] add wardable
tag @e[type=minecraft:blaze,tag=!wardable] add wardable
tag @e[type=minecraft:wither_skeleton,tag=!wardable] add wardable

# tag zombie pigmen only in the overworld
execute in minecraft:overworld run tag @e[type=minecraft:zombie_pigman,distance=0..] add wardable

# increment wardable each tick - mobs with wardable=1 (had just spawned) are targetable
scoreboard players add @e[tag=wardable,tag=!ward_target] wardable 1

# perform actions from crystal
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run function end_crystal_ward:crystal