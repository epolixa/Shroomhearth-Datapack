# tag target mob(s)
# rules for wardable mobs: must be a naturally-spawning hostile mob that is not tied to a structure or other special circumstances
execute positioned ~-50 ~-50 ~-50 run tag @e[type=#mob_warding:wardable,tag=!ward_target,scores={ward=1..20},dx=100,dy=306,dz=100] add ward_target

# play effects on crystal if mob is nearby
execute if entity @e[tag=ward_target,limit=1] run function mob_warding:crystal_ward

# play effects on and kill nearby mob
execute as @e[tag=ward_target,sort=nearest,limit=1] at @s run function mob_warding:ward_mob