# check if they meet requirements
execute unless predicate world_hall:can_print_lore run tellraw @s {"translate":"world_hall.cannot_print_lore","hoverEvent":{"action":"show_text","contents":{"translate":"world_hall.cannot_print_lore.tooltip"}}}

# print the lore
execute if predicate world_hall:can_print_lore as @n[type=minecraft:item_frame] at @s run function world_hall:print_page_to_lore