# Executor: Server, scheduled shortly after the Ender Dragon warps out
# Position: Spawn

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/warp_dragon_in] Warping in Ender Dragon"}]


# randomly teleport dragon
execute in minecraft:the_end positioned 0 64 0 run spreadplayers ~ ~ 1 40 false @n[type=minecraft:ender_dragon]

# teleport back in with new context
execute as @n[type=minecraft:ender_dragon] at @s run function shroomhearth:ender_dragon/warp_dragon_in_with_context