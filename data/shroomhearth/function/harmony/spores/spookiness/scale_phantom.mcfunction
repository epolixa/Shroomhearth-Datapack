# Executor: A mob that could wear a carved pumpkin 
# Location: The mob

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/scale_phantom] Attempting to scale "},{"selector":"@s"}]


# Attempt to scale the Phantom
execute if predicate shroomhearth:harmony/spores_of_spookiness_scale_phantom_chance run data modify entity @s size set value 6

# tag the mob so that it is not checked again
tag @s add spores_of_spookiness_scaled