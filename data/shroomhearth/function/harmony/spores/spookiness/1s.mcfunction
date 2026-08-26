# Executor: Server
# Location: Root


# Chance to play spooky noise near afk players
execute as @a[tag=afk] at @s if predicate shroomhearth:harmony/spores_of_spookiness_sound_chance run function shroomhearth:harmony/spores/spookiness/play_sound

# Reduce the timer
scoreboard players remove spores_of_spookiness shroomhearth.harmony 1

# Update the bossbar value
execute store result bossbar shroomhearth:spores_of_spookiness value run scoreboard players get spores_of_spookiness shroomhearth.harmony
bossbar set shroomhearth:spores_of_spookiness players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Spookiness when the score reaches zero or below
execute if score spores_of_spookiness shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/spookiness/deactivate
