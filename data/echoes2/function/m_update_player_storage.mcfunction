# Executor: A player who is being tracked
# Position: The player
# Data: The player's data

$tellraw @a[tag=debug_echoes2] "[echoes.m_update_player_storage] updating Player $(UUID) in storage players list..."

# Check if the player has been added yet
$execute unless data storage shroomhearth:echoes players[{uuid:$(UUID)}] run tag @s add echoes_untracked

# If the player is not tracked, add them to the storage
$execute as @s[tag=echoes_untracked] \
run data modify storage shroomhearth:echoes players append value {\
    uuid: $(UUID),\
    dimension: "$(Dimension)"\
}

# Update the player's data in storage if they are tracked
$execute as @s[tag=!echoes_untracked] \
run data modify storage shroomhearth:echoes players[{uuid:$(UUID)}] set value {\
    uuid: $(UUID),\
    dimension: "$(Dimension)"\
}

tag @s[tag=echoes_untracked] remove echoes_untracked

# Add the player's position to the storage
$data modify storage shroomhearth:echoes players[{uuid:$(UUID)}].x set from entity @s Pos[0]
$data modify storage shroomhearth:echoes players[{uuid:$(UUID)}].y set from entity @s Pos[1]
$data modify storage shroomhearth:echoes players[{uuid:$(UUID)}].z set from entity @s Pos[2]

# Add the player's name to the record
# Summons a temporary item display entity with the player's head to resolve the name
function shroomhearth:store_player_name
$data modify storage shroomhearth:echoes players[{uuid:$(UUID)}].name set from storage shroomhearth:player_name name
