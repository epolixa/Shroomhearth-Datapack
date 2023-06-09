# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# add value - 3600 seconds in an hour
scoreboard players add favHorsepower shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/horsepower max run scoreboard players get favHorsepower shroomhearth

# update the attribution for bossbar
bossbar set community:favor/horsepower name [{"color":"#DA662C","translate":"community.favor.horsepower"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#DA662C","translate":"community.favor.horsepower","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.horsepower.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor