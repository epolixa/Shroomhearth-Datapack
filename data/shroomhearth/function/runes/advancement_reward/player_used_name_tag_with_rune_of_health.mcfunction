# Executor: A player that just interacted with any entity using a name tag with a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_with_rune_of_health] "},{"selector":"@s"},{"text":" used a Name Tag with Rune of Health"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_with_rune_of_health

# set the rune parameters in storage
data modify storage shroomhearth:runes name_tag.rune set value "rune_of_health"
data modify storage shroomhearth:runes name_tag.attributes set value [{attribute:"minecraft:max_health",id:"shroomhearth:name_tag_rune_of_health.max_health",operation:"add_value",value:4}]

# apply the rune to target mob
execute anchored eyes positioned ^ ^ ^ run function shroomhearth:runes/start_name_tag_raycast
execute as @n[tag=name_tag_raycast_target] at @s run function shroomhearth:runes/apply_rune_from_name_tag
