# tick value
scoreboard players remove favWaterBreathing shroomhearth 1

# apply effect
effect give @a minecraft:water_breathing 2 0 true

# update bossbar
execute store result bossbar community:favor/water_breathing value run scoreboard players get favWaterBreathing shroomhearth
bossbar set community:favor/water_breathing players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favWaterBreathing shroomhearth matches ..0 run function community:favor/water_breathing/deactivate