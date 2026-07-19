# Executor: A player that has just respawned
# Position: Spawn

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_respawned] Player respawned: "},{"selector":"@s"}]

# Spores events add tags to players after applying their attribute modifiers.
# Attribute modifiers do not persist through death,
# so we need to remove these tags on respawn so that the attribute modifiers can be reapplied.
function shroomhearth:harmony/spores/reset_tags

# If the player has completed the "The Life of the Party" challenge, we need to give them their reward after they respawn.
execute as @s[tag=the_life_of_the_party_respawn] run function shroomhearth:challenges/the_life_of_the_party_respawn

# Tag the player to indicate they have respawned
tag @s add respawned