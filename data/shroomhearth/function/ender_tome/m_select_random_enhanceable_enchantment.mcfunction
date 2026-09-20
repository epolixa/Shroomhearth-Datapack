# Executor: Player who is trying to enhance an enhanceable item
# Position: The player
# Data: shroomhearth:ender_tome storage: {enhanceable_enchantments: array, enhanceable_enchantments_length: int, random_enhanceable_enchantment_index: int}

$tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/m_select_random_enhanceable_enchantment] Selecting random enhanceable enchantment at index $(random_enhanceable_enchantment_index)"}]


# Store the randomly selected enhanceable enchantment in the 'selected_enhanceable_enchantment' field of the 'shroomhearth:ender_tome' storage
$data modify storage shroomhearth:ender_tome selected_enhanceable_enchantment set from storage shroomhearth:ender_tome enhanceable_enchantments[$(random_enhanceable_enchantment_index)]