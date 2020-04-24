# play particles on nearby mob
particle minecraft:dragon_breath ~ ~0.9 ~ 0.2 0.3 0.2 0 3

# play vwoomp sound on mob
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.3 1.1

# set deathtime and other data on mob
data merge entity @s {DeathTime:19, HandItems:[], DeathLootTable:"minecraft:empty", Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}

# this kills the mob instantly
kill @s

# grant advancement to players near enough to witness the madness
advancement grant @p[distance=..20] only end_crystal_ward:end_crystal_ward