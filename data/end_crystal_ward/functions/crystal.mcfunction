# tag target mob(s)
execute positioned ~-50 ~-50 ~-50 run tag @e[type=#end_crystal_ward:wardable,tag=!ward_target,scores={ward=1..20},dx=100,dy=306,dz=100] add ward_target

# play effects on crystal if mob is nearby
execute if entity @e[tag=ward_target,limit=1] run function end_crystal_ward:crystal_ward

# play effects on and kill nearby mob
execute as @e[tag=ward_target,sort=nearest,limit=1] at @s run function end_crystal_ward:ward_mob