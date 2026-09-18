# Executor: A player that just interacted with a mob with a name tag
# Position: The position of the ray

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/hit_name_tag_target] found name tag target at step "},{"score":{"name":"raycast_steps","objective":"shroomhearth"}}]

particle minecraft:sculk_charge_pop ^ ^ ^ 0 0 0 0 1 normal @a[tag=debug_runes]


# tag the target
tag @s add name_tag_raycast_target
