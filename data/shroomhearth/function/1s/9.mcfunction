tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/9] Executing function set 9"}]

# Easter event - check all rabbits for easter egg
# disabled until next Easter event
#execute as @e[type=minecraft:rabbit,tag=!dropped_egg,nbt=!{MoreCarrotTicks:0},limit=1,sort=random] at @s run function easter:drop_painted_egg

# Reveal marker entities with particles to tagged players
#execute if entity @p[tag=debug_markers] at @e[type=minecraft:marker] run particle minecraft:block_marker{block_state:{Name:"minecraft:redstone_torch"}}
execute if entity @p[tag=debug_markers] at @e[type=minecraft:marker] run particle minecraft:electric_spark

# Re-schedule
schedule function shroomhearth:1s/9 1s