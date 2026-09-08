# Executor: Server
# Position: Root

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/scheduled_announcement] Announcing newly interacted wandering traders"}]


# announce any traders
execute as @e[type=minecraft:wandering_trader,tag=interacted,tag=!announced] at @s run function shroomhearth:wandering_trader/announce