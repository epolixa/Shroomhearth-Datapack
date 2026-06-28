# Bleeding Tooth - Blistering Spores
# Target victim entities take damage from applied stacks
execute as @e[scores={blistering_spores=1..}] at @s run function shroomhearth:stories/enchantment/blistering_spores/1s

# Harmony Pickaxe - Harmonic Haste
# Executor entities with the harmonic haste tag have their duration score updated
execute as @e[scores={harmonic_haste=1..}] at @s run function shroomhearth:stories/enchantment/harmonic_haste/1s