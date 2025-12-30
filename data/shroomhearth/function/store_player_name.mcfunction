# Utility for capturing player names
# Execute from the context of the player you want to capture
# Uses a temporary item display entity with a player head to get resolve the player's name
# Name is stored in shroomhearth:player_name storage

summon minecraft:item_display ~ -64 ~ {Tags:["temp_player_name"],view_range:0f,item:{id:"minecraft:player_head"}}
item modify entity @n[tag=temp_player_name] contents {function:"fill_player_head",entity:"this"}
data modify storage shroomhearth:player_name name set from entity @n[tag=temp_player_name] item.components.minecraft:profile.name
kill @n[tag=temp_player_name]