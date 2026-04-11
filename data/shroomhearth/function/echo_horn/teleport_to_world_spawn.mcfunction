# Executor: A player who is being teleported to world spawn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/teleport_to_world_spawn] No respawn point set or no respawn block found, teleporting "},{"selector":"@s"},{"text":" to world spawn"}]

# Teleport the player to world spawn
function shroomhearth:teleport_to_world_spawn

# Notify the player that no respawn block was found
tellraw @s [{"translate":"item.shroomhearth.echo_horn.no_respawn_block","fallback":"You have no home bed or charged Respawn Anchor, or it was obstructed"}]

# Mark teleportation as successful
tag @s add echo_horn_teleport_success