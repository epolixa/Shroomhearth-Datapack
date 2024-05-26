# tick value
scoreboard players remove favNightVision shroomhearth 1

# apply effect
effect give @a minecraft:night_vision 12 0 true

# update bossbar
execute store result bossbar community:favor/night_vision value run scoreboard players get favNightVision shroomhearth
bossbar set community:favor/night_vision players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favNightVision shroomhearth matches ..0 run function community:favor/night_vision/deactivate