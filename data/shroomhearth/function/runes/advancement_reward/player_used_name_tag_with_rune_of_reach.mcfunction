# Executor: A player that just interacted with any entity using a name tag with a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_with_rune_of_reach] "},{"selector":"@s"},{"text":" used a Name Tag with Rune of Reach"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_with_rune_of_reach

# set the rune parameters in storage
data modify storage shroomhearth:runes name_tag.rune set value "rune_of_reach"
data modify storage shroomhearth:runes name_tag.attributes set value [{attribute:"minecraft:block_interaction_range",id:"shroomhearth:name_tag_rune_of_reach.block_interaction_range",operation:"add_multiplied_base",value:0.5},{attribute:"minecraft:entity_interaction_range",id:"shroomhearth:name_tag_rune_of_reach.entity_interaction_range",operation:"add_multiplied_base",value:0.5}]

# apply the rune to target mob
execute anchored eyes positioned ^ ^ ^ run function shroomhearth:runes/start_name_tag_raycast
execute as @n[tag=name_tag_raycast_target] at @s run function shroomhearth:runes/apply_rune_from_name_tag
