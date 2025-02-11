# cause any riding players to dismount
execute as @p[predicate=ender_dragon:player_without_vehicle] run ride @s dismount

particle minecraft:reverse_portal ~ ~ ~ 3 1 3 1 32 force

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 200 0.5

# teleport out
tp @s ~ 0 ~

# schedule warp in
schedule function ender_dragon:warp_dragon_in 1s