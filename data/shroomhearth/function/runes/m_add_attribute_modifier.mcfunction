# Executor: An entity that just had a name tag with a rune applied to it
# Position: The entity
# Data: {attribute:string, id:string, operation:string, value:double}

$tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/m_add_attribute_modifier] adding $(attribute) to "},{"selector":"@s"}]


$attribute @s $(attribute) modifier add $(id) $(value) $(operation)
