# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update active favors if favor is not already active
execute if score favResistance shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favResistance shroomhearth 3600
execute if score favResistance shroomhearth matches 3601.. run scoreboard players set favResistance shroomhearth 3600

# create bossbar
bossbar add community:favor/resistance [{"color":"#99453A","translate":"community.favor.resistance"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/resistance max 3600
bossbar set community:favor/resistance style progress
bossbar set community:favor/resistance value 3600
bossbar set community:favor/resistance visible true
bossbar set community:favor/resistance players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#99453A","translate":"community.favor.resistance"},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:activate_favor