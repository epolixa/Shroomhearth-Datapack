#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/8] Executing function set 8"}]


# Highlight newly-spawned Wandering Traders
execute as @e[type=wandering_trader,tag=!highlighted,tag=!announced] at @s run function shroomhearth:wandering_trader/highlight

# Assign Allays to special team for no collision
execute as @e[type=minecraft:allay,tag=!no_collide] run function shroomhearth:allay_bottle/1s

# Decrement Warden shed cooldown
execute as @e[type=minecraft:warden,scores={shed_cooldown=1..}] run scoreboard players remove @s shed_cooldown 1

# Re-schedule
schedule function shroomhearth:1s/8 1s