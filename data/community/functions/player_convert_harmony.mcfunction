# This function should be attached to a button or trigger players will use when they want to convert their harmony into a charm.

# Check if the player has a charm catalyst
execute store result score @s hasCharmCatalyst run clear @s #community:charm_catalyst 0

# If they don't have enough harmony, send a message
execute unless predicate community:can_convert_harmony run tellraw @s {"translate":"community.cannot_convert_harmony","hoverEvent":{"action":"show_text","contents":{"translate":"community.cannot_convert_harmony_tooltip"}}}

# If the player has enough harmony, convert
execute if predicate community:can_convert_harmony run function community:convert_harmony_success