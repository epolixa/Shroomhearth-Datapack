# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favWaterBreathing shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/water_breathing max run scoreboard players get favWaterBreathing shroomhearth

# update the attribution for bossbar
bossbar set community:favor/water_breathing name [{"color":"#98DAC0","translate":"community.favor.water_breathing"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#98DAC0","translate":"community.favor.water_breathing","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.water_breathing.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor