# Executor: A player that just interacted with any entity using a name tag without a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_without_rune] "},{"selector":"@s"},{"text":" used a Name Tag without a rune"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_without_rune

# cancel if name tag isn't renamed and thus wasn't used, like with mobs that have default interactions
execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return 0

# remove name tag runes
execute anchored eyes positioned ^ ^ ^1.5 as @n[predicate=shroomhearth:runes/is_name_tag_target] at @s run function shroomhearth:runes/remove_name_tag_runes