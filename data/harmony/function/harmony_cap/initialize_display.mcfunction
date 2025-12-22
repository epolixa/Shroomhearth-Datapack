tellraw @a[tag=debug_harmony] "[harmony:harmony_cap/initialize_display] initializing harmony cap display entity"

# Mount the new display entity to the interaction entity
ride @s mount @n[tag=new_harmony_cap_interaction]
tag @s remove new_harmony_cap_display