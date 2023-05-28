# Clear 1 charm
clear @s #community:charm{spore:"charm"} 1

# update active favors if favor is not already active
execute if score favJumpBoost shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favJumpBoost shroomhearth 3600

# create bossbar
bossbar add community:favor/jump_boost [{"color":"#FDFF84","translate":"community.favor.jump_boost"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/jump_boost max 3600
bossbar set community:favor/jump_boost style progress
bossbar set community:favor/jump_boost value 3600
bossbar set community:favor/jump_boost visible true
bossbar set community:favor/jump_boost players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#FDFF84","translate":"community.favor.jump_boost","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.jump_boost.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor