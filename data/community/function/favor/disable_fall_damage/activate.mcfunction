# Clear 1 charm
clear @s #community:charm[custom_data={spore:"charm"}] 1

# update gamerule
gamerule fallDamage false

# update active favors if favor is not already active
execute if score favDisableFallDamage shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favDisableFallDamage shroomhearth 3600

# create bossbar
bossbar add community:favor/disable_fall_damage [{"color":"#FFEFD1","translate":"community.favor.disable_fall_damage"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/disable_fall_damage max 3600
bossbar set community:favor/disable_fall_damage style progress
bossbar set community:favor/disable_fall_damage value 3600
bossbar set community:favor/disable_fall_damage visible true
bossbar set community:favor/disable_fall_damage players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#FFEFD1","translate":"community.favor.disable_fall_damage","hover_event":{"action":"show_text","value":{"translate":"community.favor.disable_fall_damage.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor