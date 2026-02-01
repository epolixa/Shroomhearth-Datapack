# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/haste/1s] processing "},{"translate":"harmony.spores.haste"}]


# Apply Spores of Haste to any players who don't have it
execute as @a[tag=!spores_of_haste] run function harmony:spores/haste/apply

# Reduce timer for Spores of Haste
scoreboard players remove spores_of_haste shroomhearth.harmony 1

# Update boss bar for Spores of Haste duration
execute store result bossbar shroomhearth:spores_of_haste value run scoreboard players get spores_of_haste shroomhearth.harmony
bossbar set shroomhearth:spores_of_haste players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Haste if score reached zero
execute if score spores_of_haste shroomhearth.harmony matches ..0 run function harmony:spores/haste/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0.85, 0.75, 0.26], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
