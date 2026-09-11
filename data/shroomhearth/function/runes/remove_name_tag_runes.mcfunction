# Executor: An entity that should have their name tag rune attributes removed
# Position: The entity

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/remove_name_tag_runes] "},{"selector":"@s"},{"text":" had their name tag runes removed"}]


# remove all name tag rune attributes
attribute @s minecraft:scale modifier remove shroomhearth:name_tag_rune_of_largeness
attribute @s minecraft:scale modifier remove shroomhearth:name_tag_rune_of_smallness

# remove name tag rune tags
tag @s remove name_tag_rune
tag @s remove name_tag_rune_of_largeness
tag @s remove name_tag_rune_of_smallness

# remove raycast tag
tag @s remove name_tag_raycast_target