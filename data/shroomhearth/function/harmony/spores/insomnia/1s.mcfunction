# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/insomnia/1s] processing "},{"translate":"harmony.spores.insomnia"}]


# Reduce timer for Spores of Insomnia
scoreboard players remove spores_of_insomnia shroomhearth.harmony 1

# Update boss bar for Spores of Insomnia duration
execute store result bossbar shroomhearth:spores_of_insomnia value run scoreboard players get spores_of_insomnia shroomhearth.harmony
bossbar set shroomhearth:spores_of_insomnia players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Insomnia if score reached zero
execute if score spores_of_insomnia shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/insomnia/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.31, 0.38, 0.64], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
