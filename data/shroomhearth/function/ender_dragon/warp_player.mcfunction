# Executor: A player being warped by the ender dragon's breatrh attack
# Position: The player being warped

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/warp_player] Warping "},{"selector":"@s"}]


# spread players
execute positioned 0 64 0 run spreadplayers 0 0 1 40 false @s

# particles on players
execute at @s run particle minecraft:portal ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20

# play sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport hostile @a ~ ~ ~ 1 1
