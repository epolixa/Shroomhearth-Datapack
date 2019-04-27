################################################################
# Main
# main game loop commands that run every tick
################################################################

# Reset  and recalculate flags and objectives every tick
function bityard:reset_objectives
function bityard:calculate_objectives

# Community - only run when more than one player is online
execute if score Env playerCount matches 2.. run function community:main

# Multi Sleep - execute if playerCount exceeds 1
execute if score Env playerCount matches 2.. run function multi_sleep:main

# Farming XP - execute as players if an item entity just appeared
execute if entity @e[type=item,nbt={Age:0s},limit=1] as @a run function farming_xp:main

# End Crystal Ward - run if a player is online
execute if entity @p run function end_crystal_ward:main

# Speedy Paths for entities- DISABLED
#execute if entity @p as @e[type=#speedy_paths:mounts] at @s run function speedy_paths:entities

# Wandering Trader announcement
execute if entity @p as @e[type=wandering_trader,tag=!announced] at @s run function boss_announcements:wandering_trader

# Voxel Socks - run as players wearing item and run as tagged platform entities
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"voxel_socks"}}]}] at @s run function voxel_socks:players
execute if entity @p as @e[type=area_effect_cloud, tag=voxelSocks] at @s run function voxel_socks:platforms

# Ethereal Bonbon - run as players in ethereal mode
execute as @a[scores={etherealBonbon=1..}] at @s run function ethereal_bonbon:main

# Pegasus Cuirass - run as horses wearing it
execute if entity @p as @e[type=horse,nbt={ArmorItem:{tag:{relic:"pegasus_cuirass"}}}] run function pegasus_cuirass:main