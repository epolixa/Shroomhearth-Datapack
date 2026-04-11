# Executor: Player who exceeded harmony threshold and is attempting to spawn a harmony cap
# Position: The player
# Data: {maxHeight: int}

$tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/m_spread_marker] Spreading marker for harmony cap up to max height $(maxHeight)..."


# Spread the marker within an 8 to 16 block radius up to max height
$spreadplayers ~ ~ 8 16 under $(maxHeight) true @e[tag=harmony_cap_marker]