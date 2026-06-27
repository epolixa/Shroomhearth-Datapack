# Executor: an entity afflicted with Blistering Spores receiving delayed damage
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/blistering_spores/release] "},{"selector":"@s"},{"text":" released Blistering Spores"}]


# Reduce stacks score
scoreboard players remove @s blistering_spores 1

# Take damage
damage @s 1 shroomhearth:blistering_spores