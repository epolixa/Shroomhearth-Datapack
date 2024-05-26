# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favStopDaylight shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/stop_daylight max run scoreboard players get favStopDaylight shroomhearth

# update the attribution for bossbar
bossbar set community:favor/stop_daylight name [{"color":"#ffff00","translate":"community.favor.stop_daylight"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#ffff00","translate":"community.favor.stop_daylight","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.stop_daylight.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor