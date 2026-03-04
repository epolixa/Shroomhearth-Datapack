# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/continuity/1s] processing "},{"translate":"harmony.spores.continuity"}]


# Reduce the timer
scoreboard players remove spores_of_continuity shroomhearth.harmony 1

# Make sure time doesn't advance
gamerule advance_time false

# Update the bossbar value
execute store result bossbar shroomhearth:spores_of_continuity value run scoreboard players get spores_of_continuity shroomhearth.harmony
bossbar set shroomhearth:spores_of_continuity players @a[scores={show_timer_bars=1}]

# Deactivate the Spores of Continuity when the score reaches zero or below
execute if score spores_of_continuity shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/continuity/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.42, 0.42, 0.54], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
