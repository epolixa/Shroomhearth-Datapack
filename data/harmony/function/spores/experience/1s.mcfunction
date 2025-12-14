# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/experience/1s] processing "},{"translate":"harmony.spores.experience"}]


# Experience orbs are duplicated from shroomhearth:tick while active

# Reduce timer for Spores of Experience
scoreboard players remove spores_of_experience shroomhearth 1

# Update boss bar for Spores of Experience duration
execute store result bossbar shroomhearth:spores_of_experience value run scoreboard players get spores_of_experience shroomhearth
bossbar set shroomhearth:spores_of_experience players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Experience if score reached zero
execute if score spores_of_experience shroomhearth matches ..0 run function harmony:spores/experience/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0, 1, 0], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
