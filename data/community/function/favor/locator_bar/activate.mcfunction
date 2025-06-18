# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update gamerule
gamerule locatorBar true

# update active favors if favor is not already active
execute if score favLocatorBar shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favLocatorBar shroomhearth 3600

# create bossbar
bossbar add community:favor/locator_bar [{"color":"#d6be96","translate":"community.favor.locator_bar"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/locator_bar max 3600
bossbar set community:favor/locator_bar style progress
bossbar set community:favor/locator_bar value 3600
bossbar set community:favor/locator_bar visible true
bossbar set community:favor/locator_bar players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#d6be96","translate":"community.favor.locator_bar","hover_event":{"action":"show_text","value":{"translate":"community.favor.locator_bar.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor