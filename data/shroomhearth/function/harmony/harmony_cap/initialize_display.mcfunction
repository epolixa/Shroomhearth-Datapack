# Executor: Harmony Cap Display Entity to be initialized
# Position: The harmony cap

tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/initialize_display] initializing harmony cap display entity"


# Mount the new display entity to the interaction entity
ride @s mount @n[tag=new_harmony_cap_interaction]
tag @s remove new_harmony_cap_display