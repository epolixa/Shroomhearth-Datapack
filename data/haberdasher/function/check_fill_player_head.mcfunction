# check if they have a head to fill
execute store result score @s hasFillableHead run clear @s #haberdasher:fillable_heads 0

# check if they meet requirements
execute unless predicate haberdasher:can_fill_head run tellraw @s {"translate":"haberdasher.cannot_fill_head","hover_event":{"action":"show_text","value":{"translate":"haberdasher.cannot_fill_head.tooltip"}}}

# procure the head
execute if predicate haberdasher:can_fill_head run function haberdasher:procure_filled_player_head