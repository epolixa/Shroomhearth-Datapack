# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# clear the weather and stop it from cycling
weather clear
gamerule doWeatherCycle false

# update active favors if favor is not already active
execute if score favClearWeather shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favClearWeather shroomhearth 3600

# create bossbar
bossbar add community:favor/clear_weather [{"color":"#7BA4FF","translate":"community.favor.clear_weather"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/clear_weather max 3600
bossbar set community:favor/clear_weather style progress
bossbar set community:favor/clear_weather value 3600
bossbar set community:favor/clear_weather visible true
bossbar set community:favor/clear_weather players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#7BA4FF","translate":"community.favor.clear_weather","hover_event":{"action":"show_text","value":{"translate":"community.favor.clear_weather.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor