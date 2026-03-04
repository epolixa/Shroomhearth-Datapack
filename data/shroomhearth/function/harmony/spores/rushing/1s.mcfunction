# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/rushing/1s] processing "},{"translate":"harmony.spores.rushing"}]


# Reduce timer for Spores of Rushing
scoreboard players remove spores_of_rushing shroomhearth.harmony 1

# Update boss bar for Spores of Rushing duration
execute store result bossbar shroomhearth:spores_of_rushing value run scoreboard players get spores_of_rushing shroomhearth.harmony
bossbar set shroomhearth:spores_of_rushing players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Rushing if score reached zero
execute if score spores_of_rushing shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/rushing/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.7, 0.56, 0.95], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
