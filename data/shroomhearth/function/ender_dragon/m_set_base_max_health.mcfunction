# Executor: the Omen Ender Dragon
# Position: The Omen Ender Dragon
# Data: storage shroomhearth:ender_dragon: {max_health: double}

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/m_set_base_max_health] Setting max health of Omen Ender Dragon to "},{"storage":"shroomhearth:ender_dragon","nbt":"max_health"}]


$attribute @s minecraft:max_health base set $(max_health)