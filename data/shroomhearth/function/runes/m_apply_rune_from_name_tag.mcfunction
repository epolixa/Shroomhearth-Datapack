# Executor: An entity that just had a name tag with a rune applied to it
# Position: The entity
# Data: shroomhearth:runes.name_tag: {CustomName:string, rune:string, attribute:string, operation:string, value:double}

$tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/advancement_reward/m_apply_rune_from_name_tag] applying $(rune) to "},{"selector":"@s"}]


# apply attribute to nearest mob with custom name
$attribute @s $(attribute) modifier add shroomhearth:name_tag_$(rune) $(value) $(operation)

# add tag
$tag @s add name_tag_$(rune)

# Set the CustomName back with the Rune icon
$data modify entity @s CustomName set value [{"extra":[{"atlas":"minecraft:items","sprite":"shroomhearth:item/rune"}],"text":"$(CustomName)"}]
# In the future can set a specific Rune icon
#$data modify entity @s CustomName set value [{"extra":[{"atlas":"minecraft:items","sprite":"shroomhearth:item/$(rune)"}],"text":"$(CustomName)"}]