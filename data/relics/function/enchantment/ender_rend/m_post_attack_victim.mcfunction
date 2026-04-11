# Executor: Entity who was attacked with Ender Rend
# Position: The entity
# Data: {maxHeight: int}

$tellraw @a[tag=debug_stories] "[shroomhearth:stories/enchantment/ender_rend/m_post_attack_victim] Spreading affected entity up to max height $(maxHeight)..."


# Spread the entity within an 0 to 8 block radius up to max height
$spreadplayers ~ ~ 0 8 under $(maxHeight) false @s