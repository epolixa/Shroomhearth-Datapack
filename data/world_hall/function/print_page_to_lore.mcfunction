# copy text from first page of lecturn's book to lore of item
#execute as @e[type=minecraft:item_frame,sort=nearest,limit=1] at @s run data modify entity @s Item.tag.display.Lore set from block ~ ~-1 ~ Book.tag.pages

# copy text from first page of lecturn's book to storage
data modify storage world_hall:lore_printer page_raw set from block ~ ~-1 ~ Book.components."minecraft:writable_book_content".pages[0].raw

# set temporary sign block at bottom of world
setblock ~ -64 ~ minecraft:oak_sign

# set page raw text to sign data for JSON text component resolution
data modify block ~ -64 ~ front_text.messages[0] set value '[{"nbt":"page_raw","storage":"world_hall:lore_printer"}]'

# copy resolved text back to storage
data modify storage world_hall:lore_printer page_resolved set string block ~ -64 ~ front_text.messages[0]

# remove temporary sign block
setblock ~ -64 ~ minecraft:bedrock

# preset item lore storage to array of two empty text components
data modify storage world_hall:lore_printer item_lore set value ['""','""']

# copy item lore to storage
data modify storage world_hall:lore_printer item_lore set from entity @s Item.components."minecraft:lore"

# copy final lore to item
data modify entity @s Item.components."minecraft:lore" append from storage world_hall:lore_printer page_resolved

#execute as @n[type=minecraft:item_frame] at @s unless data entity @s Item.components."minecraft:lore"[0] run data modify entity @s Item.components."minecraft:lore" append value "{\"text\":\"\"}"
#execute as @n[type=minecraft:item_frame] at @s if data entity @s Item.components."minecraft:lore"[0] run data modify entity @s Item.components."minecraft:lore" append from block ~ ~-1 ~ Book.components."minecraft:writable_book_content".pages[0].raw
#execute as @n[type=minecraft:item_frame] at @s if data entity @s Item.components."minecraft:lore"[1] run data modify entity @s Item.components."minecraft:lore"[1] set from block ~ ~-1 ~ Book.components."minecraft:writable_book_content".pages[0].raw

# set lectern to empty
#setblock ~ ~ ~ minecraft:lectern[has_book=false,facing=west]{}

# take xp from player
xp add @p -1 levels

# play particles
particle minecraft:witch ~ ~0.5 ~ 0.2 0 0.2 0 4

# play sounds
playsound minecraft:block.enchantment_table.use block @a ~ ~1 ~ 1 1.1

# grant advancement
advancement grant @p only world_hall:taking_notes