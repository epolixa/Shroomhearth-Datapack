# Executor: Server, scheduled 1 tick after the player receives levitation from colliding with the ender dragon
# Position: Spawn

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/remove_levitation] Removing levitation from tagged players"}]


effect clear @a[tag=remove_levitation] levitation
tag @a[tag=remove_levitation] remove remove_levitation