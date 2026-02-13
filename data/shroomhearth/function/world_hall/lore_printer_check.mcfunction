# Executor: The nearest player from a triggered command block
# Position: The player

tellraw @a[tag=debug_world_hall] [{"text":"[shroomhearth:world_hall/lore_printer_check] "},{"selector":"@s"},{"text":" is attempting to print lore."}]


# Check if the player meets the requirements
execute unless predicate shroomhearth:can_print_lore run tellraw @s {"translate":"world_hall.cannot_print_lore","hover_event":{"action":"show_text","value":{"translate":"world_hall.cannot_print_lore.tooltip"}}}

# Print the lore if they do
execute if predicate shroomhearth:can_print_lore as @n[type=minecraft:item_frame] at @s run function shroomhearth:world_hall/print_page_to_lore