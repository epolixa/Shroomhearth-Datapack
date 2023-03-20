# teleport out
tp @s ~ 0 ~

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 0.6

# schedule warp in
schedule function ender_dragon:warp_dragon_in 1s