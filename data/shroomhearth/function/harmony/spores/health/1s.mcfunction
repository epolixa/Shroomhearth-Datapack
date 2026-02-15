# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/health/1s] processing "},{"translate":"harmony.spores.health"}]


# Apply Spores of Health to any players who don't have it
execute as @a[tag=!spores_of_health] run function shroomhearth:harmony/spores/health/apply

# Reduce timer for Spores of Health
scoreboard players remove spores_of_health shroomhearth.harmony 1

# Update boss bar for Spores of Health duration
execute store result bossbar shroomhearth:spores_of_health value run scoreboard players get spores_of_health shroomhearth.harmony
bossbar set shroomhearth:spores_of_health players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Health if score reached zero
execute if score spores_of_health shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/health/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.97, 0.49, 0.14], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
