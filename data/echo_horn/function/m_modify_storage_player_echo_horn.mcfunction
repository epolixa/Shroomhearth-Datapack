# Executor: A player who is attempting to teleport to their respawn point
# Position: The player
# Data: temp_uuid storage
# {key_string: string}

$tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:m_modify_storage_player_echo_horn] Modifying echo horn storage for $(key_string)"}]

# First flush the existing data
$data remove storage shroomhearth:players $(key_string).echo_horn

# Add the entire echo_horn item data to storage from either the offhand or mainhand.
#$execute if entity @s[tag=using_echo_horn_mainhand] run data modify storage shroomhearth:players $(key_string).echo_horn.item set from entity @s SelectedItem
#$execute if entity @s[tag=using_echo_horn_offhand] run data modify storage shroomhearth:players $(key_string).echo_horn.item set from entity @s equipment.offhand

# Add the player's respawn data
$data modify storage shroomhearth:players $(key_string).echo_horn.respawn.x set from entity @s respawn.pos[0]
$data modify storage shroomhearth:players $(key_string).echo_horn.respawn.y set from entity @s respawn.pos[1]
$data modify storage shroomhearth:players $(key_string).echo_horn.respawn.z set from entity @s respawn.pos[2]

# Respawn dimension defaults to overworld if not set
$execute if data entity @s respawn.dimension \
run data modify storage shroomhearth:players $(key_string).echo_horn.respawn.dimension set from entity @s respawn.dimension
$execute unless data storage shroomhearth:players $(key_string).echo_horn.respawn.dimension \
run data modify storage shroomhearth:players $(key_string).echo_horn.respawn.dimension set value "minecraft:overworld"

# Run chained macro to perform the teleport
#$function echo_horn:m_teleport_to_respawn with storage shroomhearth:players $(key_string).echo_horn



# Run chained macro to start forceloading respawn chunk
$function echo_horn:m_start_forceloading_respawn with storage shroomhearth:players $(key_string).echo_horn.respawn


