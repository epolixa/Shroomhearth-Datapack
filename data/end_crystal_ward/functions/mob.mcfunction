execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:mob enter"}

# play effects on nearby mob
particle minecraft:dragon_breath ~ ~0.9 ~ 0.2 0.3 0.2 0 3

# finally set deathtime on mob to remove the nearby mob
data merge entity @s {DeathTime:19, HandItems:[], DeathLootTable:"minecraft:empty", Silent:true, NoAI:true, ActiveEffects:[{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
kill @s

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:mob exit"}