# tick value
scoreboard players remove favClearWeather shroomhearth 1

# update bossbar
execute store result bossbar community:favor/clear_weather value run scoreboard players get favClearWeather shroomhearth
bossbar set community:favor/clear_weather players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favClearWeather shroomhearth matches ..0 run function community:favor/clear_weather/deactivate