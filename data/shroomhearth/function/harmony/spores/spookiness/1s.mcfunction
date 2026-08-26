# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/1s] processing "},{"translate":"event.shroomhearth.spores_of_spookiness"}]


# Chance to set a Carved Pumpkin in head slot of certain mobs
execute as @e[type=#shroomhearth:spores_of_spookiness_wears_carved_pumpkin,tag=!spores_of_spookiness_carved_pumpkin] at @s run function shroomhearth:harmony/spores/spookiness/equip_carved_pumpkin

# Chance to scale Phantoms
execute as @e[type=minecraft:phantom,tag=!spores_of_spookiness_scaled] at @s run function shroomhearth:harmony/spores/spookiness/scale_phantom

# Chance to play spooky noise near afk players
execute as @a[tag=afk] at @s if predicate shroomhearth:harmony/spores_of_spookiness_mysterious_sound_chance summon minecraft:marker run function shroomhearth:harmony/spores/spookiness/play_mysterious_sound

# Reduce the timer
scoreboard players remove spores_of_spookiness shroomhearth.harmony 1

# Update the bossbar value
execute store result bossbar shroomhearth:spores_of_spookiness value run scoreboard players get spores_of_spookiness shroomhearth.harmony
bossbar set shroomhearth:spores_of_spookiness players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Spookiness when the score reaches zero or below
execute if score spores_of_spookiness shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/spookiness/deactivate

# Chance to play particle effect around players
execute as @r at @s if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.89, 0.56, 0.11], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
