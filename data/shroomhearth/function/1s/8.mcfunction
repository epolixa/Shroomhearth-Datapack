tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/8] Executing function set 8"}]

# Announce newly-spawned Wandering Traders
execute in minecraft:overworld as @e[type=wandering_trader,distance=0..,tag=!announced] at @s run function wandering_trader:1s

# Assign Allays to special team for no collision
execute as @e[type=minecraft:allay,tag=!no_collide] run function allay_bottle:1s

# Re-schedule
schedule function shroomhearth:1s/8 1s