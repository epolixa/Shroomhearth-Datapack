# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/1s] processing "},{"translate":"harmony.spores.speed"}]


# Apply Spores of Speed to any players who don't have it
execute as @a[tag=!spores_of_speed] run function harmony:spores/speed/apply

# Reduce timer for Spores of Speed
scoreboard players remove spores_of_speed shroomhearth 1

# Update boss bar for Spores of Speed duration
execute store result bossbar shroomhearth:spores_of_speed value run scoreboard players get spores_of_speed shroomhearth
bossbar set shroomhearth:spores_of_speed players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Speed if score reached zero
execute if score spores_of_speed shroomhearth matches ..0 run function harmony:spores/speed/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0.2, 0.92, 1], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
