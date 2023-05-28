# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# add value - 3600 seconds in an hour
scoreboard players add favKeepInventory shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/keep_inventory max run scoreboard players get favKeepInventory shroomhearth

# update the attribution for bossbar
bossbar set community:favor/keep_inventory name [{"color":"#c6c6c6","translate":"community.favor.keep_inventory"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#c6c6c6","translate":"community.favor.keep_inventory","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.keep_inventory.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor