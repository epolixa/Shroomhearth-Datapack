# Executor: A player that just interacted with any entity using a name tag without a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_without_rune] "},{"selector":"@s"},{"text":" used a Name Tag without a rune"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_without_rune

# cancel if name tag isn't renamed and thus wasn't used, like with mobs that have default interactions
execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return 0

# remove name tag runes from target mob
execute anchored eyes positioned ^ ^ ^ run function shroomhearth:runes/start_name_tag_raycast

execute as @n[tag=name_tag_raycast_target] at @s run particle minecraft:sonic_boom ^ ^ ^ 0 0 0 0 1 normal @a[tag=debug_runes]

execute as @n[tag=name_tag_raycast_target] at @s run function shroomhearth:runes/remove_name_tag_runes