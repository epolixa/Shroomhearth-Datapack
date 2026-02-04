# Executor: Server
# Position: Spawn coordinates in The Porcelain


# Ensure all Players in The Porcelain are set to Creative mode
gamemode creative @a[gamemode=!creative,distance=0..]

# Execute Porcelain anchor functions
execute as @e[tag=porcelain_anchor,distance=0..] at @s run function shroomhearth:porcelain/anchor_in_porcelain

# Render all mobs Silent and weakened
execute as @e[type=#shroomhearth:mobs,distance=0..,tag=!vitrified] run data merge entity @s {Tags:["vitrified"],DeathLootTable:"minecraft:empty",Silent:true,Health:1}

# Remove any Withers as they may be overly destructive
kill @e[type=minecraft:wither,distance=0..]
