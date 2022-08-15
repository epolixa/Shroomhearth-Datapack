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
tellraw @a "The Keep Inventory ordinance was activated by <player>"