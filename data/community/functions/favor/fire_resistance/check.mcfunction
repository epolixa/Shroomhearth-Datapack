# This function checks for a player's charm before activating an event

# Check that player has charm
execute store result score @s hasCharm run clear @s #community:charm[custom_data={spore:"charm"}] 0

# If they don't have charm, send a message
execute unless predicate community:has_charm run tellraw @s {"translate":"community.missing_charm","hoverEvent":{"action":"show_text","contents":{"translate":"community.missing_charm.tooltip"}}}

# If the player has charm, activate or extend
execute if predicate community:has_charm if score favFireResistance shroomhearth matches 1.. run function community:favor/fire_resistance/extend
execute if predicate community:has_charm if score favFireResistance shroomhearth matches 0 run function community:favor/fire_resistance/activate