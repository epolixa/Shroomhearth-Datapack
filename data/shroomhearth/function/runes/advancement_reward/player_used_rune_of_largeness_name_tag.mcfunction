# Executor: A player that just interacted with any entity using a name tag with a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_rune_of_largeness_name_tag] "},{"selector":"@s"},{"text":" used a Name Tag with Rune of Largeness"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_rune_of_largeness_name_tag

# apply attribute to nearest mob with custom name
execute as @n[predicate=shroomhearth:runes/is_name_tag_target] at @s run attribute @s minecraft:scale modifier add shroomhearth:rune_of_largeness_name_tag 0.5 add_multiplied_total