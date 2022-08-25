# tick value
scoreboard players remove favInsomnia shroomhearth 1

# update bossbar
execute store result bossbar community:favor/insomnia value run scoreboard players get favInsomnia shroomhearth
bossbar set community:favor/insomnia players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favInsomnia shroomhearth matches ..0 run function community:favor/insomnia/deactivate