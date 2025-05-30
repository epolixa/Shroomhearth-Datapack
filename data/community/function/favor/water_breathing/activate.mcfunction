# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update active favors if favor is not already active
scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favWaterBreathing shroomhearth 3600

# create bossbar
bossbar add community:favor/water_breathing [{"color":"#98DAC0","translate":"community.favor.water_breathing"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/water_breathing max 3600
bossbar set community:favor/water_breathing style progress
bossbar set community:favor/water_breathing value 3600
bossbar set community:favor/water_breathing visible true
bossbar set community:favor/water_breathing players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#98DAC0","translate":"community.favor.water_breathing","hover_event":{"action":"show_text","value":{"translate":"community.favor.water_breathing.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor