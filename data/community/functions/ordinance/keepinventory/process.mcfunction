# tick value
scoreboard players remove ordKeepInventory shroomhearth 1

# deactivate ordinance if score reached zero
execute if score ordKeepInventory shroomhearth matches ..0 run function community:ordinance/keepinventory/deactivate