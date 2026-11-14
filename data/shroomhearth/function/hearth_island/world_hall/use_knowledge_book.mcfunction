# Executor: A player that used a knowledge book
# Position: The player

tellraw @a[tag=debug_world_hall] [{"text":"[shroomhearth:hearth_island/world_hall/use_knowledge_book] "},{"selector":"@s"},{"text":" is using a knowledge book."}]


# unlock all recipes
recipe give @s *

# revoke dummy recipe
recipe take @s shroomhearth:knowledge_book_dummy

# revoke trigger advancement
advancement revoke @s only shroomhearth:recipe/knowledge_book_dummy