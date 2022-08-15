# tick value
scoreboard players remove ordKeepInventory shroomhearth 1

# update bossbar
execute store result bossbar community:ordinance/keepinventory value run scoreboard players get ordKeepInventory shroomhearth

# deactivate ordinance if score reached zero
execute if score ordKeepInventory shroomhearth matches ..0 run function community:ordinance/keepinventory/deactivate