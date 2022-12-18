# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# add value - 3600 seconds in an hour
scoreboard players add favStrength shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/strength max run scoreboard players get favStrength shroomhearth

# update the attribution for bossbar
bossbar set community:favor/strength name [{"color":"#932423","translate":"community.favor.strength"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#932423","translate":"community.favor.strength","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.strength.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor