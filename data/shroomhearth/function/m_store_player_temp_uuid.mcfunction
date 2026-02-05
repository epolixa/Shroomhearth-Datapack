# Executor: any entity, typically a player
# Position: inherit
# Data: {1: string, 2: string, 3: string, 4: string}

# Updates the temp_uuid_string in player storage to prepare for modifications.

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:m_store_player_temp_uuid] Storing temp UUID string for "},{"selector":"@s"}]


$data modify storage shroomhearth:players target_uuid.uuid_string set value "$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)"

tellraw @a[tag=debug_shroomhearth] [{"text":"Updated target entity uuid_string in storage: "},{"nbt":"target_uuid.uuid_string","storage":"shroomhearth:players"}]