# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update active favors if favor is not already active
execute if score favStrength shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value
scoreboard players add favStrength shroomhearth 2400

# create bossbar
bossbar add community:favor/strength [{"color":"#932423","translate":"community.favor.strength"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/strength max 2400
bossbar set community:favor/strength style progress
bossbar set community:favor/strength value 2400
bossbar set community:favor/strength visible true
bossbar set community:favor/strength players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#932423","translate":"community.favor.strength","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.strength.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor