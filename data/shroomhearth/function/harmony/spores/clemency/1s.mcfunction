# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/clemency/1s] processing "},{"translate":"harmony.spores.clemency"}]


# Reduce the timer
scoreboard players remove spores_of_clemency shroomhearth.harmony 1

# Update the bossbar value
execute store result bossbar shroomhearth:spores_of_clemency value run scoreboard players get spores_of_clemency shroomhearth.harmony
bossbar set shroomhearth:spores_of_clemency players @a[scores={show_timer_bars=1}]

# Deactivate the Spores of Clemency when the score reaches zero or below
execute if score spores_of_clemency shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/clemency/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.47, 0.65, 1], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
