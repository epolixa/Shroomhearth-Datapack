# Executor: the Ender Dragon while it is being teleported out
# Position: The Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/warp_dragon_out] Warping out Ender Dragon"}]


# cause any riding players to dismount
execute as @p[predicate=shroomhearth:ender_dragon/player_without_vehicle] run ride @s dismount

particle minecraft:reverse_portal ~ ~ ~ 3 1 3 1 32 force

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ~ ~ ~ 200 0.5

# teleport out
tp @s ~ 0 ~

# schedule warp in
schedule function shroomhearth:ender_dragon/warp_dragon_in 1s