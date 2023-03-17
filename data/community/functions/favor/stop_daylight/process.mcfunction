# tick value
scoreboard players remove favStopDaylight shroomhearth 1

# update bossbar
execute store result bossbar community:favor/stop_daylight value run scoreboard players get favStopDaylight shroomhearth
bossbar set community:favor/stop_daylight players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favStopDaylight shroomhearth matches ..0 run function community:favor/stop_daylight/deactivate