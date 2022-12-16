# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update gamerule
gamerule keepInventory true

# update active favors if favor is not already active
execute if score favKeepInventory shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favKeepInventory shroomhearth 3600

# create bossbar
bossbar add community:favor/keep_inventory [{"color":"#c6c6c6","translate":"community.favor.keep_inventory"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/keep_inventory max 3600
bossbar set community:favor/keep_inventory style progress
bossbar set community:favor/keep_inventory value 3600
bossbar set community:favor/keep_inventory visible true
bossbar set community:favor/keep_inventory players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#c6c6c6","translate":"community.favor.keep_inventory","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.keep_inventory.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor