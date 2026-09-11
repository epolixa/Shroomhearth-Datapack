# Executor: A player that just interacted with any entity using a name tag with a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_with_rune_of_gravity] "},{"selector":"@s"},{"text":" used a Name Tag with Rune of Gravity"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_with_rune_of_gravity

# set the rune parameters in storage
data modify storage shroomhearth:runes name_tag.rune set value "rune_of_gravity"
data modify storage shroomhearth:runes name_tag.attributes set value [{attribute:"minecraft:gravity",id:"shroomhearth:name_tag_rune_of_gravity.gravity",operation:"add_multiplied_total",value:-0.5},{attribute:"minecraft:fall_damage_multiplier",id:"shroomhearth:name_tag_rune_of_gravity.fall_damage_multiplier",operation:"add_multiplied_total",value:-0.5}]

# apply the rune to target mob
execute anchored eyes positioned ^ ^ ^ run function shroomhearth:runes/start_name_tag_raycast
execute as @n[tag=name_tag_raycast_target] at @s run function shroomhearth:runes/apply_rune_from_name_tag
