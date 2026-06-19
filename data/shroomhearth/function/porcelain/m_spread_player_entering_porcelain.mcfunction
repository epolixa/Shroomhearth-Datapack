# Executor: Player who is entering The Porcelain
# Position: The player
# Data: {maxHeight: int}

$tellraw @a[tag=debug_porcelain] "[shroomhearth:porcelain/m_spread_player_entering_porcelain] Spreading player up to $(maxHeight)..."


# Find a block for the player to teleport onto nearest their current position, at or below their Y position
$execute at @s run spreadplayers ~ ~ 0 1 under $(maxHeight) false @s