# set lectern to empty
setblock ~ ~ ~ minecraft:lectern[has_book=false,facing=south]{}

# summon recipe book
loot spawn ~ ~1 ~ loot town_hall:knowledge_book

# play particles
particle minecraft:happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.01 4

# play sounds
playsound minecraft:block.enchantment_table.use block @a ~ ~1 ~ 1 1.1