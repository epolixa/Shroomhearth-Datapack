# Executor: an entity with the blistering spores tag
# Position: the entity


# Play particles
particle minecraft:crimson_spore ~ ~1 ~ 0 0 0 0 1

# Update timer score
scoreboard players add @s blistering_spores 1

# Take damage and release spores after at least 20 ticks (1 second)
execute if predicate shroomhearth:stories/release_blistering_spores run function shroomhearth:stories/enchantment/blistering_spores/release