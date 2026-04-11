# Executor: an entity attacked with Blistering Spores
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/blistering_spores/release] "},{"selector":"@s"},{"text":" released Blistering Spores"}]


# Remove pseudo effect tag
tag @s remove blistering_spores

# Reset timer score
scoreboard players reset @s blistering_spores

# Take damage
damage @s 1 shroomhearth:blistering_spores