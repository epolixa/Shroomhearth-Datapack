# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favHaste shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/haste max run scoreboard players get favHaste shroomhearth

# update the attribution for bossbar
bossbar set community:favor/haste name [{"color":"#D9C043","translate":"community.favor.haste"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#D9C043","translate":"community.favor.haste","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.haste.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor