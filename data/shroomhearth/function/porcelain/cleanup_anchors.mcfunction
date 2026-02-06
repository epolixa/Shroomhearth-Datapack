# Executor: Ad-hoc
# Position: Executor's position

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/cleanup_anchors] Cleaning up all Porcelain anchors"}]


# Kill all anchor armor stands
kill @e[tag=source_anchor]
kill @e[tag=porcelain_anchor]

# Unload all forced chunks
execute in minecraft:overworld run forceload remove all
execute in minecraft:the_nether run forceload remove all
execute in minecraft:the_end run forceload remove all
execute in shroomhearth:the_porcelain run forceload remove all

# Remove scores
scoreboard players reset @a use_porcelain