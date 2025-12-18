# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/armor/1s] processing "},{"translate":"harmony.spores.armor"}]


# Apply Spores of Armor to any players who don't have it
execute as @a[tag=!spores_of_armor] run function harmony:spores/armor/apply

# Reduce timer for Spores of Armor
scoreboard players remove spores_of_armor shroomhearth 1

# Update boss bar for Spores of Armor duration
execute store result bossbar shroomhearth:spores_of_armor value run scoreboard players get spores_of_armor shroomhearth
bossbar set shroomhearth:spores_of_armor players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Armor if score reached zero
execute if score spores_of_armor shroomhearth matches ..0 run function harmony:spores/armor/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0.56, 0.27, 0.93], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
