# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favSpeed shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/speed max run scoreboard players get favSpeed shroomhearth

# update the attribution for bossbar
bossbar set community:favor/speed name [{"color":"#33EBFF","translate":"community.favor.speed"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#33EBFF","translate":"community.favor.speed","hover_event":{"action":"show_text","value":{"translate":"community.favor.speed.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor