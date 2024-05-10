# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update active favors if favor is not already active
execute if score favSpeed shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favSpeed shroomhearth 3600

# create bossbar
bossbar add community:favor/speed [{"color":"#33EBFF","translate":"community.favor.speed"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/speed max 3600
bossbar set community:favor/speed style progress
bossbar set community:favor/speed value 3600
bossbar set community:favor/speed visible true
bossbar set community:favor/speed players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#33EBFF","translate":"community.favor.speed","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.speed.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor