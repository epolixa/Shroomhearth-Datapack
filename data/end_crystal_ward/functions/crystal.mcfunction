# tag target mob(s)
tag @e[tag=wardable,tag=!ward_target,scores={wardable=1},distance=..32] add ward_target

# play effects on crystal if mob is nearby
execute if entity @e[tag=ward_target,limit=1] run function end_crystal_ward:effects

# play effects on and kill nearby mob
execute as @e[tag=ward_target,sort=nearest,limit=1] at @s run function end_crystal_ward:mob