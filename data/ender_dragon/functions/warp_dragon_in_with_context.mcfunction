# teleport in
tp @s ~ 90 ~

# fix height to nearest end crystal if one exists
data modify entity @s Pos[1] set from entity @e[type=minecraft:end_crystal,limit=1,sort=nearest] Pos[1]

# set dragon phase to circling
data modify entity @s DragonPhase set value 0

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 0.7