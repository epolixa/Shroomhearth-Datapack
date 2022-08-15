# Clear 1 memento
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.memento"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update gamerule
gamerule keepInventory true

# add value 
scoreboard players add ordKeepInventory shroomhearth 3600
execute if score ordKeepInventory shroomhearth matches 3601.. run scoreboard players set ordKeepInventory shroomhearth 3600

# create bossbar
bossbar add community:ordinance/keepinventory "Keep Inventory"
bossbar set community:ordinance/keepinventory max 3600
bossbar set community:ordinance/keepinventory players @a
bossbar set community:ordinance/keepinventory style progress
bossbar set community:ordinance/keepinventory value 3600
bossbar set community:ordinance/keepinventory visible true

# announce activation
tellraw @a [{"translate":"community.ordinance.keepinventory_activate"}, {"text":" "}, {"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8