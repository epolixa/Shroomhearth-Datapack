# tick value
scoreboard players remove favUptick shroomhearth 1

# update bossbar
execute store result bossbar community:favor/uptick value run scoreboard players get favUptick shroomhearth
bossbar set community:favor/uptick players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favUptick shroomhearth matches ..0 run function community:favor/uptick/deactivate