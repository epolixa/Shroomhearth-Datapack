# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/strength/1s] processing "},{"translate":"harmony.spores.strength"}]


# Apply Spores of Strength to any players who don't have it
execute as @a[tag=!spores_of_strength] run function shroomhearth:harmony/spores/strength/apply

# Reduce timer for Spores of Strength
scoreboard players remove spores_of_strength shroomhearth.harmony 1

# Update boss bar for Spores of Strength duration
execute store result bossbar shroomhearth:spores_of_strength value run scoreboard players get spores_of_strength shroomhearth.harmony
bossbar set shroomhearth:spores_of_strength players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Strength if score reached zero
execute if score spores_of_strength shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/strength/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[1, 0.78, 0], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
