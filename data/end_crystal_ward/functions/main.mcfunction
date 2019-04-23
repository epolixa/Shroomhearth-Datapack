# increment ward score on wardable mobs each tick - mobs with ward=1 (had just spawned) are targetable
execute if entity @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] run scoreboard players add @e[type=#end_crystal_ward:wardable,tag=!ward_target] ward 1

# run crystal actions if there are wardable mobs 
execute if entity @e[type=#end_crystal_ward:wardable,scores={ward=1}] as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run function end_crystal_ward:crystal