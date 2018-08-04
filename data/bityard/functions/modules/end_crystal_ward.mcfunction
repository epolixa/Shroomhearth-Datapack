################################################################
# End Crystal Ward
# player-placed end crystals ward hostile mobs from spawning
################################################################

# play effects on nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] run particle minecraft:dragon_breath ~ ~0.9 ~ 0.2 0.3 0.2 0 1

# play effects on crystal if mob is nearby
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0 7

# finally set deathtime to remove the nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] at @s run data merge entity @e[tag=wardable,scores={entityTicks=1},distance=..32] {DeathTime:19, DeathLootTable:minecraft:empty, Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}