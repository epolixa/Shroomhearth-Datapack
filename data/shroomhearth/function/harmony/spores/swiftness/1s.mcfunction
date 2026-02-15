# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/swiftness/1s] processing "},{"translate":"harmony.spores.swiftness"}]


# Apply Spores of Swiftness to any players who don't have it
execute as @a[tag=!spores_of_swiftness] run function shroomhearth:harmony/spores/swiftness/apply

# Reduce timer for Spores of Swiftness
scoreboard players remove spores_of_swiftness shroomhearth.harmony 1

# Update boss bar for Spores of Swiftness duration
execute store result bossbar shroomhearth:spores_of_swiftness value run scoreboard players get spores_of_swiftness shroomhearth.harmony
bossbar set shroomhearth:spores_of_swiftness players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Swiftness if score reached zero
execute if score spores_of_swiftness shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/swiftness/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.2, 0.92, 1], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
