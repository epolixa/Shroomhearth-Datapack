# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update gamerule
gamerule doDaylightCycle false

# update active favors if favor is not already active
execute if score favStopDaylight shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favStopDaylight shroomhearth 3600

# create bossbar
bossbar add community:favor/stop_daylight [{"color":"#ffff00","translate":"community.favor.stop_daylight"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/stop_daylight max 3600
bossbar set community:favor/stop_daylight style progress
bossbar set community:favor/stop_daylight value 3600
bossbar set community:favor/stop_daylight visible true
bossbar set community:favor/stop_daylight players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#ffff00","translate":"community.favor.stop_daylight","hover_event":{"action":"show_text","value":{"translate":"community.favor.stop_daylight.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor