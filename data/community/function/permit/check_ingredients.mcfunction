# This function checks for a player's charm and permit material before creating

# Check that player has charm and ingredient
execute store result score @s hasCharm run clear @s #community:charm[custom_data={shroomhearth_id"charm"}] 0
execute store result score @s hasPermitMaterial run clear @s #community:permit_material 0

# If they don't have charm, send a message
execute unless predicate community:can_create_permit run tellraw @s {"translate":"community.cannot_create_permit","hover_event":{"action":"show_text","value":{"translate":"community.cannot_create_permit_tooltip"}}}

# If the player has the charm and material, create permit
execute if predicate community:can_create_permit run function community:permit/create_living_island_permit