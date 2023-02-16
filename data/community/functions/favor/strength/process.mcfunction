# tick value
scoreboard players remove favStrength shroomhearth 1

# apply effect
effect give @a minecraft:strength 2 1 true

# update bossbar
execute store result bossbar community:favor/strength value run scoreboard players get favStrength shroomhearth
bossbar set community:favor/strength players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favStrength shroomhearth matches ..0 run function community:favor/strength/deactivate