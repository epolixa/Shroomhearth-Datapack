# Executor: A Rabbit that has not yet dropped an egg while the Easter spores event is active
# Position: The Rabbit

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/painted_eggs/drop_painted_egg] Dropping painted egg"}]


loot spawn ~ ~ ~ loot shroomhearth:harmony/painted_eggs/random_painted_egg

playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1 1

tag @s add dropped_egg