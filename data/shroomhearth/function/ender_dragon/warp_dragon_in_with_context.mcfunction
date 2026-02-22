# Executor: the Ender Dragon while it is being teleported in
# Position: The Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/warp_dragon_in_with_context] Warping in Ender Dragon"}]


# teleport in
tp @s ~ 90 ~

# fix height to nearest end crystal if one exists
data modify entity @s Pos[1] set from entity @e[type=minecraft:end_crystal,limit=1,sort=nearest] Pos[1]

# set dragon phase to circling
data modify entity @s DragonPhase set value 0

particle minecraft:portal ~ ~ ~ 3 1 3 1 32 force

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ~ ~ ~ 12 0.7