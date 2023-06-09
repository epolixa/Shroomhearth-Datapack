# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# add value - 3600 seconds in an hour
scoreboard players add favDisableCramming shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/disable_cramming max run scoreboard players get favDisableCramming shroomhearth

# update the attribution for bossbar
bossbar set community:favor/disable_cramming name [{"color":"#6e0453","translate":"community.favor.disable_cramming"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#6e0453","translate":"community.favor.disable_cramming","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.disable_cramming.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor