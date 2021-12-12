# merge data to enderman
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true}

# kill enderman
kill @s

# create pillar of crying obsidian at enderman position
fill ~ ~ ~ ~ ~3 ~ minecraft:crying_obsidian replace minecraft:air

# create pillar marker
summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["pillar_marker"],Passengers:[{id:"minecraft:slime",Size:11,Tags:["pillar_gravity"],NoAI:true,NoGravity:true,Invulnerable:true,Silent:true,DeathTime:19,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:false}]}]}

# play particles on pillars
particle minecraft:dragon_breath ~ ~2 ~ 0.5 2 0.5 0.05 20 force

# play sound on pillars
playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 3 0.01