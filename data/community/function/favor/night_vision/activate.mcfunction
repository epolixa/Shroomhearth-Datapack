# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update active favors if favor is not already active
scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favNightVision shroomhearth 3600

# create bossbar
bossbar add community:favor/night_vision [{"color":"#C2FF66","translate":"community.favor.night_vision"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/night_vision max 3600
bossbar set community:favor/night_vision style progress
bossbar set community:favor/night_vision value 3600
bossbar set community:favor/night_vision visible true
bossbar set community:favor/night_vision players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#C2FF66","translate":"community.favor.night_vision","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.night_vision.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor