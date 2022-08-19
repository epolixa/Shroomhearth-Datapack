# Favors

# Inform the player about any active favors when they login
execute as @a[tag=!favor_informed] run function community:inform_favors

# Process "Keep Inventory" favor
execute if score favKeepInventory shroomhearth matches 1.. run function community:favor/keepinventory/process