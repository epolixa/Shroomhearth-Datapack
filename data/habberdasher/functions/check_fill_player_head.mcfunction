# check if they have a head to fill
execute store result score @s hasFillableHead run clear @s #habberdasher:fillable_heads 0

# check if they meet requirements
execute unless predicate habberdasher:can_fill_head run tellraw @s {"translate":"habberdasher.cannot_fill_head","hoverEvent":{"action":"show_text","contents":{"translate":"habberdasher.cannot_fill_head.tooltip"}}}

# procure the head
execute if predicate habberdasher:can_fill_head run function habberdasher:procure_filled_player_head