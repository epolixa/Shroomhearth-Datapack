# kill all anchor armor stands
kill @e[tag=overworld_anchor]
kill @e[tag=porcelain_anchor]

# unload all forced chunks
execute in minecraft:overworld run forceload remove all

# remove scores
scoreboard players reset @a usePorcelain