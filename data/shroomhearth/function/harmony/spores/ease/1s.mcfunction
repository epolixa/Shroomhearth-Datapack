# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/ease/1s] processing "},{"translate":"harmony.spores.ease"}]


# Reduce timer for Spores of Ease
scoreboard players remove spores_of_ease shroomhearth.harmony 1

# Update boss bar for Spores of Ease duration
execute store result bossbar shroomhearth:spores_of_ease value run scoreboard players get spores_of_ease shroomhearth.harmony
bossbar set shroomhearth:spores_of_ease players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Ease if score reached zero
execute if score spores_of_ease shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/ease/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.71, 0.86, 0.38], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
