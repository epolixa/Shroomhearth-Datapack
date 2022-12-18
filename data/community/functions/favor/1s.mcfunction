# Favors

# Inform the player about any active favors when they login
execute as @a[scores={playerLeft=1..}] run function community:inform_favors

# Process "Keep Inventory" favor
execute if score favKeepInventory shroomhearth matches 1.. run function community:favor/keep_inventory/process

# Process "Regeneration" favor
execute if score favRegeneration shroomhearth matches 1.. run function community:favor/regeneration/process

# Process "Haste" favor
execute if score favHaste shroomhearth matches 1.. run function community:favor/haste/process

# Process "Speed" favor
execute if score favSpeed shroomhearth matches 1.. run function community:favor/speed/process

# Process "Jump Boost" favor
execute if score favJumpBoost shroomhearth matches 1.. run function community:favor/jump_boost/process

# Process "Strength" favor
execute if score favStrength shroomhearth matches 1.. run function community:favor/strength/process

# Process "Resistance" favor
execute if score favResistance shroomhearth matches 1.. run function community:favor/resistance/process

# Process "Fire Resistance" favor
execute if score favFireResistance shroomhearth matches 1.. run function community:favor/fire_resistance/process

# Process "Water Breathing" favor
execute if score favWaterBreathing shroomhearth matches 1.. run function community:favor/water_breathing/process

# Process "Insomnia" favor
execute if score favInsomnia shroomhearth matches 1.. run function community:favor/insomnia/process

# Process "Uptick" favor
execute if score favUptick shroomhearth matches 1.. run function community:favor/uptick/process

# Process "Disable Raids" favor
execute if score favDisableRaids shroomhearth matches 1.. run function community:favor/disable_raids/process

# Process "Easy" favor
execute if score favEasy shroomhearth matches 1.. run function community:favor/easy/process