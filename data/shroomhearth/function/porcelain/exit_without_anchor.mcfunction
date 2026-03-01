# Executor: A Player that is exiting The Porcelain without a matching Porcelain Anchor
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/exit_without_anchor] No matching Porcelain Anchor found for "},{"selector":"@s"},{"text":", teleporting to world spawn"}]


# Teleport the player to world spawn
function shroomhearth:teleport_to_world_spawn

# Notify the player that no anchor was found
title @s actionbar {"translate":"items.shroomhearth.porcelain.no_anchor_found","fallback":"No Porcelain Anchor found"}