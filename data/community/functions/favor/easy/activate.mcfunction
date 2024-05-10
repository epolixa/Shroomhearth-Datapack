# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update difficulty
difficulty easy

# update active favors if favor is not already active
scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favEasy shroomhearth 3600

# create bossbar
bossbar add community:favor/easy [{"color":"#dbf19f","translate":"community.favor.easy"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/easy max 3600
bossbar set community:favor/easy style progress
bossbar set community:favor/easy value 3600
bossbar set community:favor/easy visible true
bossbar set community:favor/easy players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#dbf19f","translate":"community.favor.easy","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.easy.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor