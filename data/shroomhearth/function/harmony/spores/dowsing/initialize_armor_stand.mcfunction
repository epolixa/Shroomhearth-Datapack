# Executor: Harmony Cap Display Entity to be initialized
# Position: The harmony cap

tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/spores/dowsing/initialize_armor_stand] initializing harmony cap armor stand entity"


# Mount the new armor stand to the tagged interaction entity
ride @s mount @n[tag=harmony_cap_interaction,tag=!spores_of_dowsing]
tag @s remove new_harmony_cap_armor_stand