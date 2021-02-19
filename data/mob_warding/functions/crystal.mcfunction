# tag target mob(s)
# rules for wardable mobs: must be a naturally-spawning hostile mob that is not tied to a structure or other special circumstances
execute run tag @e[tag=!ward_target,scores={ward=1},dx=100,dy=306,dz=100] add ward_target

# play effects on crystal if target mobs are nearby
execute if entity @e[tag=ward_target,dx=100,dy=306,dz=100] at @s run function mob_warding:crystal_ward

# play effects on and kill nearby mobs
execute as @e[tag=ward_target,dx=100,dy=306,dz=100] at @s run function mob_warding:ward_mob