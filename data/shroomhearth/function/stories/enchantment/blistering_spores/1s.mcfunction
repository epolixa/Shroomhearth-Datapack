# Executor: an entity with blistering spores score
# Position: the entity


# Play particles
particle minecraft:crimson_spore ~ ~1 ~ 0 0 0 0 2

# Chance to release spores and apply damage
execute if predicate shroomhearth:random_chance_50 run function shroomhearth:stories/enchantment/blistering_spores/release