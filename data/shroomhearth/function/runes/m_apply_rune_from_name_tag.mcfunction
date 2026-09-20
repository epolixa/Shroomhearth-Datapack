# Executor: An entity that just had a name tag with a rune applied to it
# Position: The entity
# Data: shroomhearth:runes.name_tag: {CustomName:string, rune:string, attribute:string, operation:string, value:double}

$tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/m_apply_rune_from_name_tag] applying $(rune) to "},{"selector":"@s"}]


# add tag
$tag @s add name_tag_$(rune)

# apply individual attribute modifiers
execute if data storage shroomhearth:runes name_tag.attributes[0] run function shroomhearth:runes/m_add_attribute_modifier with storage shroomhearth:runes name_tag.attributes[0]
execute if data storage shroomhearth:runes name_tag.attributes[1] run function shroomhearth:runes/m_add_attribute_modifier with storage shroomhearth:runes name_tag.attributes[1]

# Set the CustomName back with the Rune icon
$data modify entity @s CustomName set value [{"extra":[{"atlas":"minecraft:items","color":"white","sprite":"shroomhearth:item/rune"}],"text":"$(CustomName)"}]
# In the future can set a specific Rune icon
#$data modify entity @s CustomName set value [{"extra":[{"atlas":"minecraft:items","sprite":"shroomhearth:item/$(rune)"}],"text":"$(CustomName)"}]