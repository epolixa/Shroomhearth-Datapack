# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# update gamerule
gamerule randomTickSpeed 24

# update active favors if favor is not already active
execute if score favUptick shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favUptick shroomhearth 3600

# create bossbar
bossbar add community:favor/uptick [{"color":"#8b3fc5","translate":"community.favor.uptick"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/uptick max 3600
bossbar set community:favor/uptick style progress
bossbar set community:favor/uptick value 3600
bossbar set community:favor/uptick visible true
bossbar set community:favor/uptick players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#8b3fc5","translate":"community.favor.uptick","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.uptick.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor