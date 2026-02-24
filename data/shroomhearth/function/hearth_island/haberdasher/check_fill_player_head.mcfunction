# check if they have a head to fill
execute store result score @s has_fillable_head run clear @s #shroomhearth:fillable_heads 0

# check if they meet requirements
execute unless predicate shroomhearth:can_fill_head run tellraw @s {"translate":"haberdasher.cannot_fill_head","hover_event":{"action":"show_text","value":{"translate":"haberdasher.cannot_fill_head.tooltip"}}}

# procure the head
execute if predicate shroomhearth:can_fill_head run function shroomhearth:hearth_island/haberdasher/procure_filled_player_head