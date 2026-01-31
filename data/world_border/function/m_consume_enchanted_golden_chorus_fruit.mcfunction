# Executor: Player who ate an Enchanted Golden Chorus Fruit
# Position: The player
# Data: {maxRange: int}

tellraw @a[tag=debug_world_border] [{"text":"[world_border:m_consume_enchanted_golden_chorus_fruit] "},{"selector":"@s"},{"text":" spreading player within World Border range of "},{"nbt":"enchanted_golden_chorus_fruit.maxRange","source":"storage","storage":"shroomhearth:world_border"}]

# Spread the player within the captured world border distance centered at 0,0
$execute if dimension minecraft:the_nether run spreadplayers 0 0 0 $(maxRange) under 127 false @s
$execute unless dimension minecraft:the_nether run spreadplayers 0 0 0 $(maxRange) false @s