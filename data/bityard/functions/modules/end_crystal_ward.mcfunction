################################################################
# End Crystal Ward
# player-placed end crystals ward hostile mobs from spawning
################################################################

# play effects on nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] run particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0 7

# play effects on crystal if mob is nearby
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0}] at @s at @e[tag=wardable,scores={entityTicks=1},distance=..32] at @s run particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0 7

# finally kill the nearby mob
execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:0}] at @s run kill @e[tag=wardable,scores={entityTicks=1},distance=..32]