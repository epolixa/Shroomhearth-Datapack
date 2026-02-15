# Executor: A player who is attempting to teleport to their respawn point
# Position: The player
# Data: temp_uuid storage
# {uuid_string: string}

$tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/m_modify_storage_player_echo_horn] Modifying echo horn storage for $(uuid_string)"}]


# First flush the existing data
$data remove storage shroomhearth:players $(uuid_string).echo_horn

# Add the player's respawn data
$data modify storage shroomhearth:players $(uuid_string).echo_horn.respawn.x set from entity @s respawn.pos[0]
$data modify storage shroomhearth:players $(uuid_string).echo_horn.respawn.y set from entity @s respawn.pos[1]
$data modify storage shroomhearth:players $(uuid_string).echo_horn.respawn.z set from entity @s respawn.pos[2]

# Respawn dimension defaults to overworld if not set
$execute if data entity @s respawn.dimension \
run data modify storage shroomhearth:players $(uuid_string).echo_horn.respawn.dimension set from entity @s respawn.dimension
$execute unless data storage shroomhearth:players $(uuid_string).echo_horn.respawn.dimension \
run data modify storage shroomhearth:players $(uuid_string).echo_horn.respawn.dimension set value "minecraft:overworld"

# Run chained macro to start forceloading respawn chunk
$function shroomhearth:echo_horn/m_start_forceloading_respawn with storage shroomhearth:players $(uuid_string).echo_horn.respawn