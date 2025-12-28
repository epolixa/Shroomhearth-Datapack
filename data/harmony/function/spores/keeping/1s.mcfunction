# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/keeping/1s] processing "},{"translate":"harmony.spores.keeping"}]


# Reduce timer for Spores of Keeping
scoreboard players remove spores_of_keeping shroomhearth 1

# Update boss bar for Spores of Keeping duration
execute store result bossbar shroomhearth:spores_of_keeping value run scoreboard players get spores_of_keeping shroomhearth
bossbar set shroomhearth:spores_of_keeping players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Keeping if score reached zero
execute if score spores_of_keeping shroomhearth matches ..0 run function harmony:spores/keeping/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate harmony:spores_particle_chance run particle minecraft:dust{color:[0.78, 0.78, 0.78], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
