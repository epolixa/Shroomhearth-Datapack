# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update active favors if favor is not already active
scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favFireResistance shroomhearth 3600

# create bossbar
bossbar add community:favor/fire_resistance [{"color":"#FF9900","translate":"community.favor.fire_resistance"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/fire_resistance max 3600
bossbar set community:favor/fire_resistance style progress
bossbar set community:favor/fire_resistance value 3600
bossbar set community:favor/fire_resistance visible true
bossbar set community:favor/fire_resistance players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#FF9900","translate":"community.favor.fire_resistance","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.fire_resistance.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor