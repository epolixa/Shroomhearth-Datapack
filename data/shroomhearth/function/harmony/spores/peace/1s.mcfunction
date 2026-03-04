# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/peace/1s] processing "},{"translate":"harmony.spores.peace"}]


# Reduce timer for Spores of Peace
scoreboard players remove spores_of_peace shroomhearth.harmony 1

# Update boss bar for Spores of Peace duration
execute store result bossbar shroomhearth:spores_of_peace value run scoreboard players get spores_of_peace shroomhearth.harmony
bossbar set shroomhearth:spores_of_peace players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Peace if score reached zero
execute if score spores_of_peace shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/peace/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.95, 0.6, 0.37], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
