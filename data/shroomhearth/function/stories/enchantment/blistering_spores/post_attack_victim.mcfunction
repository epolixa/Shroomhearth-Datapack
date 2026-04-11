# Executor: an entity attacked with Blistering Spores
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/blistering_spores/post_attack_victim] "},{"selector":"@s"},{"text":" was attacked with Blistering Spores"}]


# Tag entity with pseudo effect
tag @s add blistering_spores