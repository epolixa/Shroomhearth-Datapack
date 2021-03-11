################################################################
# cleanup anchors
# utility to cleanup leftover anchors or loaded chunks
################################################################

# kill all anchor armor stands
execute in minecraft:overworld run kill @e[type=minecraft:armor_stand,tag=overworld_anchor]
execute in porcelain:the_porcelain run kill @e[type=minecraft:armor_stand,tag=porcelain_anchor]

# unload all forced chunks
execute in minecraft:overworld run forceload remove all

# remove scores
scoreboard players reset @a usePorcelain