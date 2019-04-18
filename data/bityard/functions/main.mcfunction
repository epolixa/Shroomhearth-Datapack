################################################################
# Main
# main game loop commands that run every tick
################################################################

# Core operations
function bityard:calculate_objectives

# Community - only run when more than one player is online
execute if score Env playerCount matches 2.. run function community:main

# Multi Sleep - execute if playerCount exceeds 1
execute if score Env playerCount matches 2.. run function multi_sleep:main

# End Crystal Ward - only run if an end crystal is loaded
execute if entity @e[type=end_crystal,nbt={ShowBottom:0b},limit=1] run function end_crystal_ward:main

# Voxel Socks - run as players wearing item, run as tagged platform entities
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"voxel_socks"}}]}] at @s run function voxel_socks:players
execute as @e[type=area_effect_cloud, tag=voxelSocks] at @s run function voxel_socks:platforms

# Ethereal Bonbon - run as players in ethereal mode
execute as @a[scores={etherealBonbon=1..}] at @s run function ethereal_bonbon:main

# Pegasus Cuirass - run as horses wearing it
execute as @e[type=horse,nbt={ArmorItem:{tag:{relic:"pegasus_cuirass"}}}] run function pegasus_cuirass:main

# Gui Sounds - run as players
execute as @a run function utility_sounds:main

# Speedy Paths for entities - disabled until we have entity tag definitions in 1.14
#execute if entity @e[type=#speedy_paths:mounts,limit=1] run function speedy_paths:entities

function bityard:reset_objectives