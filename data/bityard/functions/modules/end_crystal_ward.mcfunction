################################################################
# End Crystal Ward
# player-placed end crystals ward hostile mobs from spawning
################################################################

# tag wardable mobs
execute as @e[type=minecraft:zombie, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:husk, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:drowned, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:zombie_villager, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:skeleton, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:slime, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:witch, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:stray, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:creeper, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:spider, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:cave_spider, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:phantom, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:ghast, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:magma_cube, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:blaze, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:wither_skeleton, tag=!wardable] run tag @s add wardable

# play effects on nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] run particle minecraft:dragon_breath ~ ~0.9 ~ 0.2 0.3 0.2 0 3

# play effects on crystal if mob is nearby
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0 3
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s facing entity @e[tag=wardable,scores={entityTicks=1},distance=..32] eyes positioned ^ ^ ^1 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s facing entity @e[tag=wardable,scores={entityTicks=1},distance=..32] eyes positioned ^ ^ ^2 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s facing entity @e[tag=wardable,scores={entityTicks=1},distance=..32] eyes positioned ^ ^ ^3 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s facing entity @e[tag=wardable,scores={entityTicks=1},distance=..32] eyes positioned ^ ^ ^4 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0 0

# play sound
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 0.9

# finally set deathtime to remove the nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s as @e[tag=wardable,scores={entityTicks=1},distance=..32] run data merge entity @s {DeathTime:19, HandItems:[], DeathLootTable:"minecraft:empty", Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run kill @e[tag=wardable,scores={entityTicks=1},distance=..32]