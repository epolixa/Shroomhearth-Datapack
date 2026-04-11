# Executor: A Player that is exiting The Porcelain without a matching Porcelain Amphora in their source dimension
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/exit_without_porcelain_amphora] No matching Porcelain Amphora found for "},{"selector":"@s"},{"text":", teleporting to world spawn"}]


# Teleport the player to world spawn
function shroomhearth:teleport_to_world_spawn

# Notify the player that no amphora was found
title @s actionbar {"translate":"item.shroomhearth.porcelain_amphora.missing","fallback":"Your Porcelain Amphora could not be found."}