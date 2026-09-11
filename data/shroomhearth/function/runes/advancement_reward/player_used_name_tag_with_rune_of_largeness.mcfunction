# Executor: A player that just interacted with any entity using a name tag with a rune enchantment on it
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/player_used_name_tag_with_rune_of_largeness] "},{"selector":"@s"},{"text":" used a Name Tag with Rune of Largeness"}]


# revoke advancement
advancement revoke @s only shroomhearth:runes/player_used_name_tag_with_rune_of_largeness

# set the rune parameters in storage
data modify storage shroomhearth:runes name_tag.rune set value "rune_of_largeness"
data modify storage shroomhearth:runes name_tag.attribute set value "minecraft:scale"
data modify storage shroomhearth:runes name_tag.operation set value "add_multiplied_total"
data modify storage shroomhearth:runes name_tag.value set value 0.5

# apply the rune to nearest qualifying mob
execute anchored eyes positioned ^ ^ ^1.5 as @n[predicate=shroomhearth:runes/is_name_tag_target] at @s run function shroomhearth:runes/apply_rune_from_name_tag