# Executor: A Player who just consumed a Hyphal Knot
# Position: The player

tellraw @a[tag=debug_world_border] [{"text":"[world_border:consume_hyphal_knot] "},{"selector":"@s"},{"text":" attempted to unravel a Hyphal Knot"}]


# Warn player and drop Hyphal Knot if world border is already growing
execute unless predicate world_border:world_border_idle run function world_border:deny_hyphal_knot

# Grow world border if it is idle
execute if predicate world_border:world_border_idle run function world_border:grow_world_border

# Revoke advancement trigger
advancement revoke @s only world_border:consume_hyphal_knot