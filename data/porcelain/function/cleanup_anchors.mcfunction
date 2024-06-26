# kill all anchor armor stands
kill @e[tag=source_anchor]
kill @e[tag=porcelain_anchor]

# unload all forced chunks
execute in minecraft:overworld run forceload remove all
execute in minecraft:the_nether run forceload remove all
execute in minecraft:the_end run forceload remove all
execute in minecraft:the_porcelain run forceload remove all

# remove scores
scoreboard players reset @a usePorcelain