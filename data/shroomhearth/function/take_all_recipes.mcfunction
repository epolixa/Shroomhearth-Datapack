# Executor: The player whose recipes are being removed
# Position: The player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:take_all_recipes] Removing all recipes for "},{"selector":"@s"}]


# Remove all recipes
recipe take @s *

# Revoke all recipe advancements
advancement revoke @s from minecraft:recipes/root