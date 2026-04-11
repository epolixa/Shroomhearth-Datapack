# Executor: A player who ate something besides a melon slice
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/epolixa/consume_non_melon_slice] "},{"selector":"@s"},{"text":" ate something besides a melon slice"}] 


# Reset melontarian score
scoreboard players reset @s melontarian

# Revoke trigger advancement
advancement revoke @s only shroomhearth:challenges/epolixa/consume_non_melon_slice