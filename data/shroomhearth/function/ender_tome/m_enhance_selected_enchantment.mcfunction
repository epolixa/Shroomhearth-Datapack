# Executor: Player who is trying to enhance an enhanceable item
# Position: The player
# Data: shroomhearth:ender_tome storage: {selected_enhanceable_enchantment: string}

$tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/m_enhance_selected_enchantment] Enhancing item with selected enchantment $(selected_enhanceable_enchantment)"}]


# Enhance the player's weapon with the selected enchantment
$item modify entity @s weapon {type:"minecraft:set_enchantments",add:true,enchantments:{"$(selected_enhanceable_enchantment)":1}}