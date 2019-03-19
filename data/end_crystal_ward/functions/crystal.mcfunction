execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:crystal enter"}

# tag target mob(s)
tag @e[tag=wardable, tag=!ward_target, scores={wardable=1}, distance=..32] add ward_target

# play effects on crystal if mob is nearby
execute if entity @e[tag=ward_target, limit=1] run function end_crystal_ward:effects

# play effects on and kill nearby mob
execute as @e[tag=ward_target, limit=1, sort=nearest] at @s run function end_crystal_ward:mob

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:crystal exit"}