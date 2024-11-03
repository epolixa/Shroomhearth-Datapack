# Executes from the context of a player.

# Capture player UUID components to scores
execute store result score @s UUID1 run data get entity @s UUID[0]
execute store result score @s UUID2 run data get entity @s UUID[1]
execute store result score @s UUID3 run data get entity @s UUID[2]
execute store result score @s UUID4 run data get entity @s UUID[3]

# Capture UUID to tempUUID
data modify storage shroomhearth:players temp_uuid.1 set from entity @s UUID[0]
data modify storage shroomhearth:players temp_uuid.2 set from entity @s UUID[1]
data modify storage shroomhearth:players temp_uuid.3 set from entity @s UUID[2]
data modify storage shroomhearth:players temp_uuid.4 set from entity @s UUID[3]
function shroomhearth:m_store_player_temp_uuid with storage shroomhearth:players temp_uuid