# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/leaping/1s] processing "},{"translate":"harmony.spores.leaping"}]


# Apply Spores of Leaping to any players who don't have it
execute as @a[tag=!spores_of_leaping] run function harmony:spores/leaping/apply

# Reduce timer for Spores of Leaping
scoreboard players remove spores_of_leaping shroomhearth.harmony 1

# Update boss bar for Spores of Leaping duration
execute store result bossbar shroomhearth:spores_of_leaping value run scoreboard players get spores_of_leaping shroomhearth.harmony
bossbar set shroomhearth:spores_of_leaping players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Leaping if score reached zero
execute if score spores_of_leaping shroomhearth.harmony matches ..0 run function harmony:spores/leaping/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0.99, 1, 0.52], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
