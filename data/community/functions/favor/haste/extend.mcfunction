# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# add value
scoreboard players add favHaste shroomhearth 2400

# update the new max value for bossbar
execute store result bossbar community:favor/haste max run scoreboard players get favHaste shroomhearth

# update the attribution for bossbar
bossbar set community:favor/haste name [{"color":"#D9C043","translate":"community.favor.haste"},{"color":"white","text":" - "},{"selector": "@s"}]

# announce extension
tellraw @a [{"text":"The "},{"color":"#D9C043","translate":"community.favor.haste","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.haste.tooltip"}}},{"color":"white","text":" favor was extended by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# grant advancement
advancement grant @s only community:community_contributor