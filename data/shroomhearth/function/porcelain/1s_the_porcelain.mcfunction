# Executor: Server
# Position: Spawn coordinates in The Porcelain

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/1s_the_porcelain] Pulsing in The Porcelain..."}]


# Render all mobs Silent and weakened
execute as @e[type=#shroomhearth:mobs,distance=0..,tag=!vitrified] run data merge entity @s {Tags:["vitrified"],DeathLootTable:"minecraft:empty",Silent:true,Health:1}

# Remove any Withers as they may be overly destructive
kill @e[type=minecraft:wither,distance=0..]
