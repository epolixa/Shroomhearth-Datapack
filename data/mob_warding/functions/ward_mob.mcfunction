# play particles on nearby mob
particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4

# set deathtime and other data on mob
data merge entity @s {DeathTime:19, HandItems:[], DeathLootTable:"minecraft:empty", Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}

# this kills the mob instantly
kill @s