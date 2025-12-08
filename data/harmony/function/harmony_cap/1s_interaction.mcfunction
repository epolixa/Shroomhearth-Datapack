# Play subtle particles and sounds
execute if predicate harmony:harmony_cap_particle_chance run particle minecraft:firefly ~ ~0.1 ~ 0.1 0 0.1 0 1
execute if predicate harmony:harmony_cap_sound_chance run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 0.5 1.5

# Drop self if no support underneath
execute unless block ~ ~-0.0625 ~ #harmony:harmony_cap_grows_on run function harmony:harmony_cap/drop_item