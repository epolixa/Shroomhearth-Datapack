################################################################
# End Crystal Ward
# player-placed end crystals ward monsters from spawning
################################################################

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:main enter"}

# tag wardable mobs
execute as @e[tag=!wardable] run function end_crystal_ward:tags

# increment score each tick
scoreboard players add @e[tag=wardable, tag=!ward_target] wardable 1

# perform actions from crystal
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run function end_crystal_ward:crystal

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:main exit"}