# Executes from the context of a player.
# Updates the temp_uuid_string in player storage to prepare for modifications.
# Data: {1: string, 2: string, 3: string, 4: string}

$data modify storage shroomhearth:players temp_uuid.key_string set value "$(1)$(2)$(3)$(4)"

tellraw @a[tag=debug_shroomhearth] [{"text":"Updated player temp_uuid in storage: "},{"nbt":"temp_uuid.key_string","storage":"shroomhearth:players"}]