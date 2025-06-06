# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favStrength shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/strength max run scoreboard players get favStrength shroomhearth

# update the attribution for bossbar
bossbar set community:favor/strength name [{"color":"#FFC700","translate":"community.favor.strength"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#FFC700","translate":"community.favor.strength","hover_event":{"action":"show_text","value":{"translate":"community.favor.strength.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor