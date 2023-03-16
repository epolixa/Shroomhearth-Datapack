# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# add value - 3600 seconds in an hour
scoreboard players add favUptick shroomhearth 3600

# update the new max value for bossbar
execute store result bossbar community:favor/uptick max run scoreboard players get favUptick shroomhearth

# update the attribution for bossbar
bossbar set community:favor/uptick name [{"color":"#8b3fc5","translate":"community.favor.uptick"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#8b3fc5","translate":"community.favor.uptick","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.uptick.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor