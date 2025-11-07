# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update gamerule
gamerule spawn_phantoms false

# update active favors if favor is not already active
execute if score favInsomnia shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favInsomnia shroomhearth 3600

# create bossbar
bossbar add community:favor/insomnia [{"color":"#43538d","translate":"community.favor.insomnia"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/insomnia max 3600
bossbar set community:favor/insomnia style progress
bossbar set community:favor/insomnia value 3600
bossbar set community:favor/insomnia visible true
bossbar set community:favor/insomnia players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#43538d","translate":"community.favor.insomnia","hover_event":{"action":"show_text","value":{"translate":"community.favor.insomnia.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor