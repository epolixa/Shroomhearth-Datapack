# Executor: The nearest player from a triggered command block
# Position: The player

tellraw @a[tag=debug_world_hall] [{"text":"[shroomhearth:hearth_island/world_hall/print_knowledge_book] "},{"selector":"@s"},{"text":" is printing the knowledge book."}]


# set lectern to empty
setblock ~ ~ ~ minecraft:lectern[has_book=false,facing=south]{}

# summon recipe book
loot spawn ~ ~1 ~ loot shroomhearth:knowledge_book

# play particles
particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0 0.2 0 4

# play sounds
playsound minecraft:block.enchantment_table.use block @a ~ ~1 ~ 1 1.1

# grant advancement
advancement grant @p only shroomhearth:hearth_island/world_hall/learning_curve