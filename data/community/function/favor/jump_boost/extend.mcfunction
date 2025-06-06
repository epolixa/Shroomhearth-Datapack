# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# add value - 3600 seconds in an hour
scoreboard players add favJumpBoost shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/jump_boost max run scoreboard players get favJumpBoost shroomhearth

# update the attribution for bossbar
bossbar set community:favor/jump_boost name [{"color":"#FDFF84","translate":"community.favor.jump_boost"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#FDFF84","translate":"community.favor.jump_boost","hover_event":{"action":"show_text","value":{"translate":"community.favor.jump_boost.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor