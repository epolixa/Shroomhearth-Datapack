# Executor: Server 
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/strength/1s_active] processing active Strength Spores"


# Apply Strength Spores to any players who don't have it
execute as @a[tag=!strength_spores] run function harmony:spores/strength/apply

# Reduce timer for Strength Spores
scoreboard players remove strength_spores shroomhearth 1

# Update boss bar for Strength Spores duration
execute store result bossbar shroomhearth:strength_spores value run scoreboard players get strength_spores shroomhearth
bossbar set shroomhearth:strength_spores players @a[scores={show_spores_duration=1}]

# Deactivate Strength Spores if score reached zero
execute if score strength_spores shroomhearth matches ..0 run function harmony:spores/strength/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[1, 0.78, 0], scale: 1} ~ ~1 ~ 10 10 10 0.01 1
