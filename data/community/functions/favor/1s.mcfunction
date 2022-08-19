# Favors

# Inform the player about any active favors when they login
execute as @a[scores={playerLeft=1..}] run function community:inform_favors

# Process "Keep Inventory" favor
execute if score favKeepInventory shroomhearth matches 1.. run function community:favor/keepinventory/process

# Process "Regeneration" favor
execute if score favRegeneration shroomhearth matches 1.. run function community:favor/regeneration/process

# Process "Haste" favor
execute if score favHaste shroomhearth matches 1.. run function community:favor/haste/process

# Process "Speed" favor
execute if score favSpeed shroomhearth matches 1.. run function community:favor/speed/process