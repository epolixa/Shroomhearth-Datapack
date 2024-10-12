# This function should be run from a command block that a player can access using "execute as @p run function world_hall:lore_printer_check"

# Check if the player meets the requirements
execute unless predicate world_hall:can_print_lore run tellraw @s {"translate":"world_hall.cannot_print_lore","hoverEvent":{"action":"show_text","contents":{"translate":"world_hall.cannot_print_lore.tooltip"}}}

# Print the lore if they do
execute if predicate world_hall:can_print_lore as @n[type=minecraft:item_frame] at @s run function world_hall:print_page_to_lore