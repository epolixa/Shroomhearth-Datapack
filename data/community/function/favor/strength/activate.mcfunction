# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update active favors if favor is not already active
execute if score favStrength shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favStrength shroomhearth 3600

# create bossbar
bossbar add community:favor/strength [{"color":"#FFC700","translate":"community.favor.strength"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/strength max 3600
bossbar set community:favor/strength style progress
bossbar set community:favor/strength value 3600
bossbar set community:favor/strength visible true
bossbar set community:favor/strength players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#FFC700","translate":"community.favor.strength","hover_event":{"action":"show_text","value":{"translate":"community.favor.strength.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor