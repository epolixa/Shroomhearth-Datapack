# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# add value - 3600 seconds in an hour
scoreboard players add favDisableSpawning shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/disable_spawning max run scoreboard players get favDisableSpawning shroomhearth

# update the attribution for bossbar
bossbar set community:favor/disable_spawning name [{"color":"#406278","translate":"community.favor.disable_spawning"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#406278","translate":"community.favor.disable_spawning","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.disable_spawning.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor