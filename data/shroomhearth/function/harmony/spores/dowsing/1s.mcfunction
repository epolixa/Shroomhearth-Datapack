# Executor: Server 
# Location: Root

#tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/1s] processing "},{"translate":"event.shroomhearth.spores_of_dowsing"}]


# Apply Spores of Dowsing to any Harmony Cap who don't have it
execute as @e[tag=harmony_cap_interaction,tag=!spores_of_dowsing] at @s run function shroomhearth:harmony/spores/dowsing/apply

# Reduce timer for Spores of Dowsing
scoreboard players remove spores_of_dowsing shroomhearth.harmony 1

# Update boss bar for Spores of Dowsing duration
execute store result bossbar shroomhearth:spores_of_dowsing value run scoreboard players get spores_of_dowsing shroomhearth.harmony
bossbar set shroomhearth:spores_of_dowsing players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Dowsing if score reached zero
execute if score spores_of_dowsing shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/dowsing/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.54, 0.75, 0.75], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
