# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favDisableRaids shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/disable_raids max run scoreboard players get favDisableRaids shroomhearth

# update the attribution for bossbar
bossbar set community:favor/disable_raids name [{"color":"#0b6138","translate":"community.favor.disable_raids"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#0b6138","translate":"community.favor.disable_raids","hover_event":{"action":"show_text","value":{"translate":"community.favor.disable_raids.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor