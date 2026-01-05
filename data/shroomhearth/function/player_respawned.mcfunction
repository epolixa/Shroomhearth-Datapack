# Executor: A player that has just respawned
# Position: Root

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_respawned] Player respawned: "},{"selector":"@s"}]

# Spores events add tags to players after applying their attribute modifiers.
# Attribute modifiers do not persist through death,
# so we need to remove these tags on respawn so that the attribute modifiers can be reapplied.
function harmony:spores/reset_tags

# Tag the player to indicate they have respawned
tag @s add respawned