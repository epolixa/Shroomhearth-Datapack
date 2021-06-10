# copy text from first page of lecturn's book to lore of item
execute as @e[type=minecraft:item_frame,sort=nearest,limit=1] at @s run data modify entity @s Item.tag.display.Lore set from block ~ ~-1 ~ Book.tag.pages

# set lectern to empty
setblock ~ ~ ~ minecraft:lectern[has_book=false,facing=west]{}

# play particles
particle minecraft:witch ~ ~0.5 ~ 0.2 0 0.2 0 4

# play sounds
playsound minecraft:block.enchantment_table.use block @a ~ ~1 ~ 1 1.1

# grant advancement
advancement grant @p only town_hall:taking_notes