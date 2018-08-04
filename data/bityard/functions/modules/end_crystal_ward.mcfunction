################################################################
# End Crystal Ward
# player-placed end crystals ward hostile mobs from spawning
################################################################

# play effects on nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] run particle minecraft:dragon_breath ~ ~0.9 ~ 0.2 0.3 0.2 0 7

# play effects on crystal if mob is nearby
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0 7
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 0.9

# finally set deathtime to remove the nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s as @e[tag=wardable,scores={entityTicks=1},distance=..32] run data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run kill @e[tag=wardable,scores={entityTicks=1},distance=..32]