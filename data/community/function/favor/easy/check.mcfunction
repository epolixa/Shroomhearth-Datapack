# This function checks for a player's charm before activating an event

# Check that player has charm
#execute store result score @s hasCharm run clear @s #community:charm[custom_data={spore:"charm"}] 0
execute store result score @s has_harmony_cap run clear @s #community:harmony_cap[custom_data={spore:"harmony_cap"}] 0

# If they don't have charm, send a message
#execute unless predicate community:has_charm run tellraw @s {"translate":"community.missing_charm","hover_event":{"action":"show_text","value":{"translate":"community.missing_charm.tooltip"}}}
execute unless predicate community:has_1_harmony_cap run tellraw @s {"translate":"community.missing_harmony_cap","hover_event":{"action":"show_text","value":{"translate":"community.missing_harmony_cap.tooltip"}}}

# If the player has charm, activate or extend
execute if predicate community:has_1_harmony_cap if score favEasy shroomhearth matches 1.. run function community:favor/easy/extend
execute if predicate community:has_1_harmony_cap if score favEasy shroomhearth matches 0 run function community:favor/easy/activate