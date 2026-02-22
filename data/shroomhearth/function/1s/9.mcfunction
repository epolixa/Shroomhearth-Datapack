#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/9] Executing function set 9"}]


# Reveal marker entities with particles to tagged players
#execute if entity @p[tag=debug_markers] at @e[type=minecraft:marker] run particle minecraft:block_marker{block_state:{Name:"minecraft:redstone_torch"}}
execute if entity @p[tag=debug_markers] at @e[type=minecraft:marker] run particle minecraft:copper_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[tag=debug_markers]

# Re-schedule
schedule function shroomhearth:1s/9 1s