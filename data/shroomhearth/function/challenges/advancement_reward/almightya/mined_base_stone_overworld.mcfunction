# Executor: A player who has mined a base stone overworld block
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/almightya/mined_base_stone_overworld] "},{"selector":"@s"},{"text":" mined a base stone overworld block"}]


# Increase mined_base_stone_overworld score by the total of mined overworld base stone scores
scoreboard players operation @s mined_base_stone_overworld += @s mined_stone
scoreboard players operation @s mined_base_stone_overworld += @s mined_granite
scoreboard players operation @s mined_base_stone_overworld += @s mined_diorite
scoreboard players operation @s mined_base_stone_overworld += @s mined_andesite
scoreboard players operation @s mined_base_stone_overworld += @s mined_tuff
scoreboard players operation @s mined_base_stone_overworld += @s mined_deepslate

# Reset mined overworld base stone scores
scoreboard players reset @s mined_stone
scoreboard players reset @s mined_granite
scoreboard players reset @s mined_diorite
scoreboard players reset @s mined_andesite
scoreboard players reset @s mined_tuff
scoreboard players reset @s mined_deepslate

# Grant advancement if stat is reached
advancement grant @s[scores={mined_base_stone_overworld=1000000..}] only shroomhearth:challenges/almightya/almightya

# Revoke triggers
advancement revoke @s only shroomhearth:challenges/almightya/mined_base_stone_overworld