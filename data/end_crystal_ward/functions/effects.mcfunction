execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:effects enter"}

# play effects on crystal if mob is nearby
particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0 3
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] eyes positioned ^ ^ ^2 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] eyes positioned ^ ^ ^3 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] eyes positioned ^ ^ ^4 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0

# play sound on crystal if mob is nearby
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 0.9

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:effects exit"}