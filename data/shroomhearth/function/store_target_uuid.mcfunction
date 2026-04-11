# Executor: any entity, typically a player
# Position: inherit

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:store_target_uuid] Storing target entity UUID for "},{"selector":"@s"}]


# Store entity UUID to target_uuid storage
# Used to store player data in storage for later retrieval by other entities
data modify storage shroomhearth:players target_uuid.uuid_1 set from entity @s UUID[0]
data modify storage shroomhearth:players target_uuid.uuid_2 set from entity @s UUID[1]
data modify storage shroomhearth:players target_uuid.uuid_3 set from entity @s UUID[2]
data modify storage shroomhearth:players target_uuid.uuid_4 set from entity @s UUID[3]

# Assemble target uuid_string
function shroomhearth:m_store_target_uuid with storage shroomhearth:players target_uuid