# increment ward score on wardable mobs each second - mobs with ward=1 (had recently spawned) are targetable
execute as @e[type=#mob_warding:wardable,tag=!ward_target] unless score @s ward matches 2.. run scoreboard players add @s ward 1

# witches can be warded if they are not part of a raid
execute as @e[type=minecraft:witch,tag=!ward_target,nbt={Wave:0}] unless score @s ward matches 2.. run scoreboard players add @s ward 1

# run crystal actions if there are wardable mobs 
execute if entity @e[scores={ward=1}] as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s positioned ~-50 ~-50 ~-50 run function mob_warding:crystal