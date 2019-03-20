################################################################
# End Crystal Ward
# player-placed end crystals ward monsters from spawning
################################################################

# tag wardable mobs
execute as @e[tag=!wardable] run function end_crystal_ward:tags

# increment wardable each tick - mobs with wardable=1 (had just spawned) are targetable
scoreboard players add @e[tag=wardable,tag=!ward_target] wardable 1

# perform actions from crystal
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run function end_crystal_ward:crystal