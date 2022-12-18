# tick value
scoreboard players remove favEasy shroomhearth 1

# update bossbar
execute store result bossbar community:favor/easy value run scoreboard players get favEasy shroomhearth
bossbar set community:favor/easy players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favEasy shroomhearth matches ..0 run function community:favor/easy/deactivate