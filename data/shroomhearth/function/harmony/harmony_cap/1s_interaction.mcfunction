# Executor: Harmony Cap Interaction Entity
# Position: The harmony cap

#tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/1s_interaction] running..."


# Play subtle particles and sounds
execute if predicate shroomhearth:harmony/harmony_cap_particle_chance run particle minecraft:firefly ~ ~0.0625 ~ 0 0 0 0 1
execute if predicate shroomhearth:harmony/harmony_cap_sound_chance run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 1 2

# Drop self if inside a solid block
execute unless block ~ ~ ~ #shroomhearth:harmony/harmony_cap_grows_in run function shroomhearth:harmony/harmony_cap/drop_item

# Drop self if no support underneath
execute unless block ~ ~-0.0625 ~ #shroomhearth:harmony/harmony_cap_grows_on run function shroomhearth:harmony/harmony_cap/drop_item