# increment ward score on wardable mobs each tick - mobs with ward=1 (had just spawned) are targetable
execute as @e[type=#end_crystal_ward:wardable,tag=!ward_target] unless score @s ward matches 21.. run scoreboard players add @s ward 1

# run crystal actions if there are wardable mobs 
execute if entity @e[type=#end_crystal_ward:wardable,scores={ward=1..20}] as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run function end_crystal_ward:crystal