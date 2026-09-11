# Executor: A mob that just had a name tag with a rune applied to it
# Position: The mob

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/apply_rune_from_name_tag] applying a name tag with rune to "},{"selector":"@s"}]


# capture the mob name
data modify storage shroomhearth:runes name_tag.CustomName set from entity @s CustomName

# add tag
tag @s add name_tag_rune

# modify mob data with macro
function shroomhearth:runes/m_apply_rune_from_name_tag with storage shroomhearth:runes name_tag