# Executor: The player whose name is being stored
# Position: The player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:store_player_name] Storing player name for "},{"selector":"@s"}]


# Utility for capturing player names
# Execute from the context of the player you want to capture
# Uses a temporary item display entity with a player head to get resolve the player's name
# Name is stored in shroomhearth:player_name storage

# Create a temporary item display with a player head
summon minecraft:item_display ~ -64 ~ {Tags:["temp_player_name"],view_range:0f,item:{id:"minecraft:player_head"}}

# Modify the item display to have the player's head
item modify entity @n[tag=temp_player_name] contents {function:"fill_player_head",entity:"this"}

# Store the player name from the item display's profile component into storage
data modify storage shroomhearth:player_name name set from entity @n[tag=temp_player_name] item.components.minecraft:profile.name

# Kill the temporary item display
kill @n[tag=temp_player_name]