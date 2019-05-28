################################################################
# Main
# main game loop commands that run every tick
################################################################

# Recalculate flags and objectives every tick
function bityard:calculate_objectives

# Community - only run when more than one player is online
execute if score Env playerCount matches 2.. run function community:main

# Multi Sleep - only run when more than one player is online
execute if score Env playerCount matches 2.. run function multi_sleep:main

# Farming XP - execute as players if a crop item entity just appeared
execute if entity @e[type=item,nbt={Age:0s},limit=1] as @a run function farming_xp:main

# Bleeding particles - execute as players with low health
execute as @a[gamemode=survival,scores={playerHealth=1..10}] run function stat_display:bleeding

# End Crystal Ward - run if a player is online
execute if entity @p run function end_crystal_ward:main

# Wandering Trader announcement - run if a new wandering trader appears
execute if entity @p as @e[type=wandering_trader,tag=!announced] at @s run function boss_announcements:wandering_trader

# Voxel Socks - run as players wearing item and run as tagged platform entities
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"voxel_socks"}}]}] at @s run function voxel_socks:players
execute if entity @p as @e[type=area_effect_cloud, tag=voxelSocks] at @s run function voxel_socks:platforms

# Ethereal Bonbon - run as players in ethereal mode
execute as @a[scores={etherealBonbon=1..}] at @s run function ethereal_bonbon:main

# Pegasus Cuirass - run as horses wearing it
execute if entity @p as @e[type=horse,nbt={ArmorItem:{tag:{relic:"pegasus_cuirass"}}}] run function pegasus_cuirass:main

# Reset objectives
function bityard:reset_objectives