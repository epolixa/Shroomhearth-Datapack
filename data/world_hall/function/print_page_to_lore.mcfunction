# Executes from the context of a player that qualifies to print lore onto an item

# Summon temporary text display
# Set text data of text display from lectern for component resolution
summon minecraft:text_display ~ ~ ~ {Tags:["lore_printer_text_display"]}
data modify entity @n[tag=lore_printer_text_display] text set value [{"nbt":"Book.components.minecraft:writable_book_content.pages[0].raw","source":"block","block":"~ ~-1 ~"}]

# Copy resolved text to storage
data modify storage world_hall:lore_printer page_resolved set from entity @n[tag=lore_printer_text_display] text

# Remove temporary test display
kill @n[tag=lore_printer_text_display]

# Check if the item has pre-existing lore and if it has the player_lore flag
# If the item has player_lore, modify the last index with the new lore
# If the item does not have player_lore, append the new lore
execute if data entity @s Item.components.minecraft:custom_data.player_lore run data modify entity @s Item.components.minecraft:lore[-1] set from storage world_hall:lore_printer page_resolved
execute unless data entity @s Item.components.minecraft:custom_data.player_lore run data modify entity @s Item.components.minecraft:lore append from storage world_hall:lore_printer page_resolved

# Add a tag to the item to indicate that the lore was player-written
execute unless data entity @s Item.components.minecraft:custom_data.player_lore run data modify entity @s Item.components.minecraft:custom_data.player_lore set value 1b

# charge xp from player
xp add @p -1 levels

# Play particles and sounds
execute facing entity @p eyes run particle minecraft:witch ^ ^ ^0.25 0.2 0 0.2 0 4
playsound minecraft:entity.villager.work_cartographer block @a ~ ~ ~ 1 1

# Grant advancement
advancement grant @p only world_hall:the_fine_print