################################################################
# cleanup anchors
# utility to cleanup leftover anchors or loaded chunks
################################################################

# kill all anchor armor stands
kill @e[type=minecraft:armor_stand,tag=overworld_anchor]
kill @e[type=minecraft:armor_stand,tag=porcelain_anchor]

# unload all forced chunks
execute in minecraft:overworld run forceload remove all

# remove scores
scoreboard players reset @a usePorcelain