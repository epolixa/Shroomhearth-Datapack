# Executor: Any entity, typically a Player, being teleported to world spawn
# Position: The entity being teleported

tellraw @a[tag=debug_teleport] [{"text":"[shroomhearth:teleport_to_world_spawn] Teleporting "},{"selector":"@s"},{"text":" to world spawn"}]


# Teleport to world spawn
execute in minecraft:overworld run teleport @s 0 80 0