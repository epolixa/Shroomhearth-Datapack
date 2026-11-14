# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/harmony/1s] processing "},{"translate":"event.shroomhearth.spores_of_harmony"}]

# Eligible players near others gain one additional harmony each second.
execute as @a[scores={player_group=1..}] run scoreboard players add @s harmony 1
# TESTING PURPOSES ONLY - Include mannequins in harmony calculation
#execute as @e[type=#shroomhearth:players_and_mannequins,scores={player_group=1..}] run scoreboard players add @s harmony 1

# Reduce the timer
scoreboard players remove spores_of_harmony shroomhearth.harmony 1

# Update the bossbar value
execute store result bossbar shroomhearth:spores_of_harmony value run scoreboard players get spores_of_harmony shroomhearth.harmony
bossbar set shroomhearth:spores_of_harmony players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Harmony if the score reached zero
execute if score spores_of_harmony shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/harmony/deactivate
