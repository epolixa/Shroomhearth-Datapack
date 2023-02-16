# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# add value
scoreboard players add favResistance shroomhearth 2400

# update the new max value for bossbar
execute store result bossbar community:favor/resistance max run scoreboard players get favResistance shroomhearth

# update the attribution for bossbar
bossbar set community:favor/resistance name [{"color":"#99453A","translate":"community.favor.resistance"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#99453A","translate":"community.favor.resistance","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.resistance.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor